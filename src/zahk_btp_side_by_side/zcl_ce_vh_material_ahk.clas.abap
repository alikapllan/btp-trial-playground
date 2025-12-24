CLASS zcl_ce_vh_material_ahk DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

    " Remote product API types
    TYPES t_business_data_remote TYPE zscm_test_api_products_srv=>tyt_a_clfn_product_type.
    TYPES t_business_data_vh     TYPE TABLE OF zce_vh_materials_for_items_ahk.

    METHODS read_products
      IMPORTING filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                !top              TYPE i                                        OPTIONAL
                !skip             TYPE i                                        OPTIONAL
                sort_elements     TYPE if_rap_query_request=>tt_sort_elements   OPTIONAL
      EXPORTING business_data     TYPE t_business_data_remote
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error
                cx_http_dest_provider_error.

ENDCLASS.


CLASS zcl_ce_vh_material_ahk IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lt_remote TYPE t_business_data_remote.
    DATA lt_vh     TYPE t_business_data_vh.

    IF io_request->is_data_requested( ) = abap_false.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " RAP query coverage (must call)
    "------------------------------------------------------------
    DATA(lv_top)  = CONV i( io_request->get_paging( )->get_page_size( ) ).
    DATA(lv_skip) = CONV i( io_request->get_paging( )->get_offset( ) ).
    DATA(lt_sort) = io_request->get_sort_elements( ). " coverage

    IF lv_top <= 0.
      lv_top = 50.
    ENDIF.

    " Filter (if user types in VH)
    DATA lt_filter TYPE if_rap_query_filter=>tt_name_range_pairs.
    TRY.
        lt_filter = io_request->get_filter( )->get_as_ranges( ).
      CATCH cx_rap_query_filter_no_range.
        CLEAR lt_filter.
    ENDTRY.

    TRY.

        read_products( EXPORTING filter_conditions = lt_filter
                                 top               = lv_top
                                 skip              = lv_skip
                                 sort_elements     = lt_sort
                       IMPORTING business_data     = lt_remote ).

        " Map remote Product -> VH Material
        lt_vh = CORRESPONDING #( lt_remote MAPPING
                                  Material = product ).

        io_response->set_data( lt_vh ).

        " Important for infinite scroll:
        " don't set it to lines( lt_vh ) if backend has more
        " If you want exact count, you can request_count, but it is slower.
        " Best practice for VH scroll: set a large number.
        io_response->set_total_number_of_records( 99999999 ).

      CATCH cx_root INTO DATA(lx).
        DATA(lv_msg) = cl_message_helper=>get_latest_t100_exception( lx )->if_message~get_longtext( ).
        " optional: add logging / raise exception
    ENDTRY.
  ENDMETHOD.

  METHOD read_products.
    DATA filter_factory     TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA filter_node        TYPE REF TO /iwbep/if_cp_filter_node.
    DATA root_filter_node   TYPE REF TO /iwbep/if_cp_filter_node.

    DATA http_client        TYPE REF TO if_web_http_client.
    DATA odata_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    "------------------------------------------------------------
    " Destination + proxy for product API
    "------------------------------------------------------------
    DATA(http_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                 " Prodived by SAP for BTP Trial, see : https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-build-side-by-side-extensions-for-sap-s-4hana-public-cloud-with-sap/ba-p/14235644
                                 comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0309'
                                 comm_system_id = 'ZBTP_TRIAL_SAP_COM_0309'
                                 service_id     = 'ZBTP_TRIAL_SAP_COM_0309_REST' ).

    http_client = cl_web_http_client_manager=>create_by_http_destination( http_destination ).

    odata_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                 " Service consumption model name uploaded via Metadata edmx of API
                                                                 " https://api.sap.com/api/API_CLFN_PRODUCT_SRV/overview -> API Specification -> OData EDMX
                                                                 proxy_model_id      = 'ZSCM_TEST_API_PRODUCTS_SRV'
                                                                 proxy_model_version = '0001' )
                             io_http_client           = http_client
                             iv_relative_service_root = '' ).

    read_list_request = odata_client_proxy->create_resource_for_entity_set( 'A_CLFN_PRODUCT' )->create_request_for_read( ).

    "------------------------------------------------------------
    " Build filter tree
    " We map VH field name MATERIAL -> API property PRODUCT
    "------------------------------------------------------------
    IF filter_conditions IS NOT INITIAL.
      filter_factory = read_list_request->create_filter_factory( ).

      LOOP AT filter_conditions INTO DATA(fc).
        DATA(lv_prop) = fc-name.
        TRANSLATE lv_prop TO UPPER CASE.

        IF lv_prop = 'MATERIAL'.
          lv_prop = 'PRODUCT'.
        ENDIF.

        filter_node = filter_factory->create_by_range( iv_property_path = lv_prop
                                                       it_range         = fc-range ).

        IF root_filter_node IS INITIAL.
          root_filter_node = filter_node.
        ELSE.
          root_filter_node = root_filter_node->and( filter_node ).
        ENDIF.
      ENDLOOP.

      IF root_filter_node IS NOT INITIAL.
        read_list_request->set_filter( root_filter_node ).
      ENDIF.
    ENDIF.

    "------------------------------------------------------------
    " Sorting: default PRODUCT ascending; respect UI if it sorts MATERIAL
    "------------------------------------------------------------
    DATA(lv_desc) = abap_false.
    LOOP AT sort_elements INTO DATA(ls_sort).
      DATA(lv_name) = ls_sort-element_name.
      TRANSLATE lv_name TO UPPER CASE.
      IF lv_name = 'MATERIAL'.
        lv_desc = xsdbool( ls_sort-descending = abap_true ).
        EXIT.
      ENDIF.
    ENDLOOP.

    read_list_request->set_orderby( VALUE #( ( property_path = 'PRODUCT' descending = lv_desc ) ) ).

    "------------------------------------------------------------
    " Paging
    "------------------------------------------------------------
    IF top > 0.
      read_list_request->set_top( top ).
    ENDIF.
    read_list_request->set_skip( skip ).

    "------------------------------------------------------------
    " Execute
    "------------------------------------------------------------
    read_list_response = read_list_request->execute( ).
    read_list_response->get_business_data( IMPORTING et_business_data = business_data ).
  ENDMETHOD.
ENDCLASS.
