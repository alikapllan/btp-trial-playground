CLASS zcl_ce_vh_sales_order_ahk DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

    TYPES t_business_data_remote TYPE zsc_test_api_sales_order_srv=>tyt_a_sales_order_type.
    TYPES t_business_data_vh     TYPE TABLE OF zce_vh_sales_order_ahk.

    METHODS get_sales_orders_vh
      IMPORTING filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                !top              TYPE i
                !skip             TYPE i
                sort_elements     TYPE if_rap_query_request=>tt_sort_elements OPTIONAL
      EXPORTING business_data     TYPE t_business_data_remote
                total_count       TYPE int8
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error
                cx_http_dest_provider_error.

ENDCLASS.


CLASS zcl_ce_vh_sales_order_ahk IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA business_data_remote TYPE t_business_data_remote.
    DATA business_data_vh     TYPE t_business_data_vh.
    DATA total_count          TYPE int8.

    IF io_request->is_data_requested( ) = abap_false.
      RETURN.
    ENDIF.

    "------------------------------------------------------------
    " RAP query coverage (must call)
    "------------------------------------------------------------
    DATA(top)           = CONV i( io_request->get_paging( )->get_page_size( ) ).
    DATA(skip)          = CONV i( io_request->get_paging( )->get_offset( ) ).
    DATA(sort_elements) = io_request->get_sort_elements( ). " coverage

    IF top <= 0.
      top = 50.
    ENDIF.

    TRY.
        " Filter (if user types in VH)
        DATA(filter_condition) = io_request->get_filter( )->get_as_ranges( ).

        get_sales_orders_vh( EXPORTING filter_conditions = filter_condition
                                       top               = top
                                       skip              = skip
                                       sort_elements     = sort_elements
                             IMPORTING business_data     = business_data_remote
                                       total_count       = total_count ).

      CATCH cx_http_dest_provider_error INTO DATA(lx_dest_error).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Check Communication Arrangement. Destination error while reading sales order value help: { lx_dest_error->get_text( ) }|
            previous = lx_dest_error ).
      CATCH cx_web_http_client_error INTO DATA(lx_http).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |HTTP client error while reading sales order value help: { lx_http->get_text( ) }|
            previous = lx_http ).
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Remote error while reading sales order value help: { lx_remote->get_text( ) }|
            previous = lx_remote ).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Gateway error while reading sales order value help: { lx_gateway->get_text( ) }|
            previous = lx_gateway ).
      CATCH cx_root INTO DATA(lx_any).
        DATA(lv_long) = cl_message_helper=>get_latest_t100_exception( lx_any )->if_message~get_longtext( ).
        IF lv_long IS INITIAL.
          lv_long = lx_any->get_text( ).
        ENDIF.
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
                                iv_text  = |Unexpected error while reading sales order value help: { lv_long }|
                                previous = lx_any ).
    ENDTRY.

    business_data_vh = CORRESPONDING #( business_data_remote MAPPING
      SalesOrder    = sales_order
      CreationDate  = creation_date
      CreatedByUser = created_by_user ).

    io_response->set_total_number_of_records( total_count ).
    io_response->set_data( business_data_vh ).
  ENDMETHOD.

  METHOD get_sales_orders_vh.
    " TODO: parameter SORT_ELEMENTS is never used (ABAP cleaner)

    DATA filter_factory     TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA filter_node        TYPE REF TO /iwbep/if_cp_filter_node.
    DATA root_filter_node   TYPE REF TO /iwbep/if_cp_filter_node.

    DATA http_client        TYPE REF TO if_web_http_client.
    DATA odata_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    DATA(http_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                 comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0109'
                                 comm_system_id = 'ZBTP_TRIAL_SAP_COM_0109'
                                 service_id     = 'ZBTP_TRIAL_SAP_COM_0109_REST' ).

    http_client = cl_web_http_client_manager=>create_by_http_destination( http_destination ).

    odata_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                 proxy_model_id      = 'ZSCM_TEST_API_SALES_ORDER_SRV'
                                                                 proxy_model_version = '0001' )
                             io_http_client           = http_client
                             iv_relative_service_root = '' ).

    read_list_request = odata_client_proxy->create_resource_for_entity_set( 'A_SALES_ORDER' )->create_request_for_read( ).

    "---- Filters (keep your generic approach)
    IF filter_conditions IS NOT INITIAL.
      filter_factory = read_list_request->create_filter_factory( ).
      LOOP AT filter_conditions INTO DATA(fc).
        filter_node = filter_factory->create_by_range( iv_property_path = fc-name
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

    "---- Sort: biggest SalesOrder on top
    " If you want to ALWAYS force it, just do this line:
    read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

    "---- Paging
    IF top > 0.
      read_list_request->set_top( top ).
    ENDIF.
    read_list_request->set_skip( skip ).

    "---- count so value help can page through ALL entries
    read_list_request->request_count( ).

    read_list_response = read_list_request->execute( ).
    read_list_response->get_business_data( IMPORTING et_business_data = business_data ).

    TRY.
        total_count = read_list_response->get_count( ).
      CATCH /iwbep/cx_gateway.
        total_count = lines( business_data ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
