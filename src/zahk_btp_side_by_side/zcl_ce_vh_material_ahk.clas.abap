CLASS zcl_ce_vh_material_ahk DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

    " Remote product API types
    TYPES t_business_data_remote TYPE zscm_test_api_products_srv=>tyt_a_product_plant_type.
    TYPES t_business_data_vh     TYPE TABLE OF zce_vh_materials_for_items_ahk.

    METHODS read_products
      IMPORTING filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                !top              TYPE i                                        OPTIONAL
                !skip             TYPE i                                        OPTIONAL
                sort_elements     TYPE if_rap_query_request=>tt_sort_elements   OPTIONAL
                request_count     TYPE abap_bool                                DEFAULT abap_false
      EXPORTING business_data     TYPE t_business_data_remote
                total_count       TYPE int8
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error
                cx_http_dest_provider_error.

  PRIVATE SECTION.
    CONSTANTS c_plant TYPE zscm_test_api_products_srv=>tys_a_product_plant_type-plant VALUE '1710'.
ENDCLASS.


CLASS zcl_ce_vh_material_ahk IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lt_remote TYPE t_business_data_remote.
    DATA lt_vh     TYPE t_business_data_vh.
    DATA lv_count  TYPE int8.

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
                                 request_count     = xsdbool( io_request->is_total_numb_of_rec_requested( ) )
                       IMPORTING business_data     = lt_remote
                                 total_count       = lv_count ).

        " Map remote PRODUCT -> VH Material + Plant
        lt_vh = CORRESPONDING #( lt_remote MAPPING
                                  Material = product
                                  Plant    = plant ).

        io_response->set_data( lt_vh ).

        " Set the real total so FE stops scrolling correctly
        IF io_request->is_total_numb_of_rec_requested( ) = abap_true.
          io_response->set_total_number_of_records( lv_count ).
        ENDIF.

      CATCH cx_http_dest_provider_error INTO DATA(lx_dest_error).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Destination error while reading materials (Plant { c_plant }). Check Communication Arrangement: { lx_dest_error->get_text( ) }|
            previous = lx_dest_error ).
      CATCH cx_web_http_client_error INTO DATA(lx_http).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |HTTP client error while reading materials (Plant { c_plant }): { lx_http->get_text( ) }|
            previous = lx_http ).
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Remote error while reading materials (Plant { c_plant }): { lx_remote->get_text( ) }|
            previous = lx_remote ).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Gateway error while reading materials (Plant { c_plant }): { lx_gateway->get_text( ) }|
            previous = lx_gateway ).
      CATCH cx_root INTO DATA(lx_any).
        DATA(lv_long) = cl_message_helper=>get_latest_t100_exception( lx_any )->if_message~get_longtext( ).
        IF lv_long IS INITIAL.
          lv_long = lx_any->get_text( ).
        ENDIF.
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
                                iv_text  = |Unexpected error while reading materials (Plant { c_plant }): { lv_long }|
                                previous = lx_any ).
    ENDTRY.
  ENDMETHOD.

  METHOD read_products.
    total_count = 0.

    DATA filter_factory     TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA filter_node        TYPE REF TO /iwbep/if_cp_filter_node.
    DATA root_filter_node   TYPE REF TO /iwbep/if_cp_filter_node.

    DATA http_client        TYPE REF TO if_web_http_client.
    DATA odata_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    "------------------------------------------------------------
    " Destination + proxy
    "------------------------------------------------------------
    DATA(http_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                 comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0309'
                                 comm_system_id = 'ZBTP_TRIAL_SAP_COM_0309'
                                 service_id     = 'ZBTP_TRIAL_SAP_COM_0309_REST' ).

    http_client = cl_web_http_client_manager=>create_by_http_destination( http_destination ).

    odata_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                 proxy_model_id      = 'ZSCM_TEST_API_PRODUCTS_SRV'
                                                                 proxy_model_version = '0001' )
                             io_http_client           = http_client
                             iv_relative_service_root = '' ).

    "------------------------------------------------------------
    " Use A_PRODUCT_PLANT
    "------------------------------------------------------------
    read_list_request = odata_client_proxy->create_resource_for_entity_set( 'A_PRODUCT_PLANT' )->create_request_for_read( ).

    "------------------------------------------------------------
    " Filters:
    " 1) Fixed filter: PLANT = '1710' (ALWAYS)
    " 2) User filter mapping: MATERIAL -> PRODUCT
    "------------------------------------------------------------
    filter_factory = read_list_request->create_filter_factory( ).

    DATA lt_r_plant TYPE RANGE OF werks_d.
    lt_r_plant = VALUE #( ( sign = 'I' option = 'EQ' low = c_plant ) ).

    root_filter_node = filter_factory->create_by_range( iv_property_path = 'PLANT'
                                                        it_range         = lt_r_plant ).

    IF filter_conditions IS NOT INITIAL.
      LOOP AT filter_conditions INTO DATA(fc).
        DATA(lv_prop) = to_upper( fc-name ).

        IF lv_prop = 'MATERIAL'.
          lv_prop = 'PRODUCT'.
        ENDIF.

        " ignore user plant; we enforce fixed plant
        IF lv_prop = 'PLANT'.
          CONTINUE.
        ENDIF.

        filter_node = filter_factory->create_by_range( iv_property_path = lv_prop
                                                       it_range         = fc-range ).

        root_filter_node = root_filter_node->and( filter_node ).
      ENDLOOP.
    ENDIF.

    read_list_request->set_filter( root_filter_node ).

    "------------------------------------------------------------
    " Sorting: default PRODUCT asc; respect UI if it sorts MATERIAL desc
    "------------------------------------------------------------
    DATA(lv_desc) = abap_false.
    LOOP AT sort_elements INTO DATA(ls_sort).
      DATA(lv_name) = to_upper( ls_sort-element_name ).
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
    " Count (so FE knows when to stop)
    "------------------------------------------------------------
    IF request_count = abap_true.
      read_list_request->request_count( ).
    ENDIF.

    "------------------------------------------------------------
    " Execute
    "------------------------------------------------------------
    read_list_response = read_list_request->execute( ).
    read_list_response->get_business_data( IMPORTING et_business_data = business_data ).

    IF request_count = abap_true.
      TRY.
          total_count = read_list_response->get_count( ).
        CATCH /iwbep/cx_gateway.
          total_count = lines( business_data ).
      ENDTRY.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
