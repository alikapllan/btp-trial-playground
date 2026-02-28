CLASS zcl_ce_sales_order_ahk DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    "-------------------------------
    " Types
    "-------------------------------
    TYPES ty_r_sales_order           TYPE RANGE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order.
    TYPES ty_t_hdr_remote            TYPE STANDARD TABLE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type WITH DEFAULT KEY.
    TYPES ty_t_itm_remote            TYPE STANDARD TABLE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_item_type WITH DEFAULT KEY.
    TYPES tt_sales_order_ahk_ce      TYPE STANDARD TABLE OF zce_sales_order_ahk WITH DEFAULT KEY.
    TYPES tt_sales_order_item_ahk_ce TYPE STANDARD TABLE OF zce_sales_order_item_ahk WITH DEFAULT KEY.

    "-------------------------------
    " Helpers
    "-------------------------------
    METHODS is_item_request
      IMPORTING io_request        TYPE REF TO if_rap_query_request
      RETURNING VALUE(rv_is_item) TYPE abap_boolean.

    METHODS get_salesorder_ranges
      IMPORTING io_request            TYPE REF TO if_rap_query_request
      RETURNING VALUE(rt_sales_order) TYPE ty_r_sales_order.

    METHODS get_remote_proxy
      RETURNING VALUE(ro_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   cx_http_dest_provider_error
                cx_web_http_client_error
                /iwbep/cx_cp_remote
                /iwbep/cx_gateway.

    METHODS read_sales_order_headers
      IMPORTING io_proxy      TYPE REF TO /iwbep/if_cp_client_proxy
                it_salesorder TYPE ty_r_sales_order
                iv_top        TYPE i
                iv_skip       TYPE i
      EXPORTING et_hdr_remote TYPE ty_t_hdr_remote
                ev_count      TYPE int8
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error.

    METHODS read_sales_order_items
      IMPORTING io_proxy      TYPE REF TO /iwbep/if_cp_client_proxy
                it_salesorder TYPE ty_r_sales_order
                iv_top        TYPE i
                iv_skip       TYPE i
      EXPORTING et_itm_remote TYPE ty_t_itm_remote
                ev_count      TYPE int8
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error.

    METHODS map_headers_to_custom_entity
      IMPORTING it_hdr_remote TYPE ty_t_hdr_remote
      RETURNING VALUE(rt_hdr) TYPE tt_sales_order_ahk_ce.

    METHODS map_items_to_custom_entity
      IMPORTING it_itm_remote TYPE ty_t_itm_remote
      RETURNING VALUE(rt_itm) TYPE tt_sales_order_item_ahk_ce.

ENDCLASS.


CLASS zcl_ce_sales_order_ahk IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lv_error_message TYPE string.

    TRY.
        IF io_request->is_data_requested( ) = abap_false.
          RETURN.
        ENDIF.

        " RAP coverage
        DATA(lo_paging) = io_request->get_paging( ).
        DATA(lv_top)    = CONV i( lo_paging->get_page_size( ) ).
        DATA(lv_skip)   = CONV i( lo_paging->get_offset( ) ).

        " Determine request type + filter
        DATA(lv_is_item) = is_item_request( io_request ).
        DATA(lt_r_salesorder) = get_salesorder_ranges( io_request ).

        " Proxy (shared)
        DATA(lo_proxy) = get_remote_proxy( ).

        IF lv_is_item = abap_true.
          DATA lt_itm_remote TYPE ty_t_itm_remote.
          DATA lv_count_itm  TYPE int8.

          read_sales_order_items( EXPORTING io_proxy      = lo_proxy
                                            it_salesorder = lt_r_salesorder
                                            iv_top        = lv_top
                                            iv_skip       = lv_skip
                                  IMPORTING et_itm_remote = lt_itm_remote
                                            ev_count      = lv_count_itm ).

          DATA(lt_items_custom_entity) = map_items_to_custom_entity( lt_itm_remote ).
          io_response->set_data( lt_items_custom_entity ).

          IF io_request->is_total_numb_of_rec_requested( ).
            io_response->set_total_number_of_records( COND int8( WHEN lv_count_itm > 0
                                                                 THEN lv_count_itm
                                                                 ELSE lines( lt_items_custom_entity ) ) ).
          ENDIF.

        ELSE.
          DATA lt_hdr_remote TYPE ty_t_hdr_remote.
          DATA lv_count_hdr  TYPE int8.

          read_sales_order_headers( EXPORTING io_proxy      = lo_proxy
                                              it_salesorder = lt_r_salesorder
                                              iv_top        = lv_top
                                              iv_skip       = lv_skip
                                    IMPORTING et_hdr_remote = lt_hdr_remote
                                              ev_count      = lv_count_hdr ).

          DATA(lt_hdrs_custom_entity) = map_headers_to_custom_entity( lt_hdr_remote ).
          io_response->set_data( lt_hdrs_custom_entity ).

          IF io_request->is_total_numb_of_rec_requested( ).
            io_response->set_total_number_of_records( COND int8( WHEN lv_count_hdr > 0
                                                                 THEN lv_count_hdr
                                                                 ELSE lines( lt_hdrs_custom_entity ) ) ).
          ENDIF.
        ENDIF.

      " https://community.sap.com/t5/technology-q-a/rap-unmanaged-query-via-custom-entity-error-handling/qaq-p/12802573
      CATCH cx_web_http_client_error INTO DATA(lx_http).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |HTTP communication failed while reading sales orders: { lx_http->get_text( ) }|
            previous = lx_http ).
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
                                iv_text  = |Remote error while reading sales orders: { lx_remote->get_text( ) }|
                                previous = lx_remote ).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
                                iv_text  = |Gateway error while reading sales orders: { lx_gateway->get_text( ) }|
                                previous = lx_gateway ).
      CATCH cx_http_dest_provider_error INTO DATA(lx_dest_error).
        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
            iv_text  = |Destination error while reading sales orders. Check Communication Arrangement: { lx_dest_error->get_text( ) }|
            previous = lx_dest_error ).
      CATCH cx_root INTO DATA(lx_any).
        DATA(lv_long) = cl_message_helper=>get_latest_t100_exception( lx_any )->if_message~get_longtext( ).
        IF lv_long IS INITIAL.
          lv_long = lx_any->get_text( ).
        ENDIF.

        RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
                                iv_text  = |Unexpected error while reading sales orders: { lv_long }|
                                previous = lx_any ).
    ENDTRY.
  ENDMETHOD.

  METHOD is_item_request.
    DATA(lv_entity_id) = to_upper( io_request->get_entity_id( ) ).

    IF lv_entity_id = 'ZCE_SALES_ORDER_ITEM_AHK'.
      rv_is_item = abap_true.
      RETURN.
    ELSEIF lv_entity_id = 'ZCE_SALES_ORDER_AHK'.
      rv_is_item = abap_false.
      RETURN.
    ENDIF.

    " Fallback: infer by requested elements
    TRY.
        DATA(lt_requested_elements) = io_request->get_requested_elements( ).
        LOOP AT lt_requested_elements INTO DATA(lv_element).
          IF to_upper( lv_element ) = 'SALESORDERITEM'.
            rv_is_item = abap_true.
            RETURN.
          ENDIF.
        ENDLOOP.
      CATCH cx_rap_query_provider.
    ENDTRY.

    rv_is_item = abap_false.
  ENDMETHOD.

  METHOD get_salesorder_ranges.
    DATA lt_filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs.

    CLEAR rt_sales_order.

    TRY.
        lt_filter_conditions = io_request->get_filter( )->get_as_ranges( ).

        LOOP AT lt_filter_conditions INTO DATA(ls_fc) WHERE name = 'SALESORDER'.
          LOOP AT ls_fc-range INTO DATA(ls_range).
            APPEND VALUE #( sign   = ls_range-sign
                            option = ls_range-option
                            low    = ls_range-low
                            high   = ls_range-high ) TO rt_sales_order.
          ENDLOOP.
        ENDLOOP.

      CATCH cx_rap_query_filter_no_range.
        " no filter
    ENDTRY.
  ENDMETHOD.

  METHOD get_remote_proxy.
    DATA lo_http_client TYPE REF TO if_web_http_client.

    " Existing communication arrangement for SAP Sales Order API on SAP BTP Trial created by SAP itself
    " https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-build-side-by-side-extensions-for-sap-s-4hana-public-cloud-with-sap/ba-p/14235644
    DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                               comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0109'
                               comm_system_id = 'ZBTP_TRIAL_SAP_COM_0109'
                               service_id     = 'ZBTP_TRIAL_SAP_COM_0109_REST' ).

    lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

    ro_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                   is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                       " service consumption model name uploaded via metadata file of the Service
                                                       " https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001/overview -> API Specification -> OData EDMX
                                                       proxy_model_id      = 'ZSCM_TEST_API_SALES_ORDER_SRV'
                                                       proxy_model_version = '0001' )
                   io_http_client           = lo_http_client
                   iv_relative_service_root = '' ).
  ENDMETHOD.

  METHOD read_sales_order_items.
    DATA lo_read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA lo_read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    lo_read_list_request = io_proxy->create_resource_for_entity_set( 'A_SALES_ORDER_ITEM' )->create_request_for_read( ).

    " Filter by SalesOrder (navigation /to_Items)
    IF lines( it_salesorder ) > 0.
      DATA(lo_filter_factory_itm) = lo_read_list_request->create_filter_factory( ).
      lo_read_list_request->set_filter( lo_filter_factory_itm->create_by_range( iv_property_path = 'SALES_ORDER'
                                                                                it_range         = it_salesorder ) ).
    ENDIF.

    lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER_ITEM' descending = abap_false ) ) ).

    IF iv_top > 0.
      lo_read_list_request->set_top( iv_top ).
    ENDIF.
    IF iv_skip > 0.
      lo_read_list_request->set_skip( iv_skip ).
    ENDIF.

    lo_read_list_request->request_count( ).

    lo_read_list_response = lo_read_list_request->execute( ).
    lo_read_list_response->get_business_data( IMPORTING et_business_data = et_itm_remote ).

    TRY.
        ev_count = lo_read_list_response->get_count( ).
      CATCH /iwbep/cx_gateway.
        ev_count = 0.
    ENDTRY.
  ENDMETHOD.

  METHOD read_sales_order_headers.
    DATA lo_read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA lo_read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    lo_read_list_request = io_proxy->create_resource_for_entity_set( 'A_SALES_ORDER' )->create_request_for_read( ).

    " If key(s) provided -> filter by range and fetch selected set
    IF lines( it_salesorder ) > 0.
      DATA(lo_filter_factory_hdr) = lo_read_list_request->create_filter_factory( ).
      lo_read_list_request->set_filter( lo_filter_factory_hdr->create_by_range( iv_property_path = 'SALES_ORDER'
                                                                                it_range         = it_salesorder ) ).

      lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

      " if called from MultiInput: return all selected orders
      lo_read_list_request->set_top( COND i( WHEN lines( it_salesorder ) = 1 THEN 1 ELSE lines( it_salesorder ) ) ).
      lo_read_list_request->set_skip( 0 ).

    ELSE.
      " Plain list
      lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

      IF iv_top > 0.
        lo_read_list_request->set_top( iv_top ).
      ENDIF.
      IF iv_skip > 0.
        lo_read_list_request->set_skip( iv_skip ).
      ENDIF.
    ENDIF.

    lo_read_list_request->request_count( ).

    lo_read_list_response = lo_read_list_request->execute( ).
    lo_read_list_response->get_business_data( IMPORTING et_business_data = et_hdr_remote ).

    TRY.
        ev_count = lo_read_list_response->get_count( ).
      CATCH /iwbep/cx_gateway.
        ev_count = 0.
    ENDTRY.
  ENDMETHOD.

  METHOD map_items_to_custom_entity.
    LOOP AT it_itm_remote INTO DATA(ls_api_item).

      INSERT CORRESPONDING #( ls_api_item MAPPING
        SalesOrder            = sales_order
        SalesOrderItem        = sales_order_item
        Material              = material
        RequestedQuantity     = requested_quantity
        RequestedQuantityUnit = requested_quantity_unit ) INTO TABLE rt_itm.
    ENDLOOP.
  ENDMETHOD.

  METHOD map_headers_to_custom_entity.
    LOOP AT it_hdr_remote INTO DATA(ls_api_hdr).
      INSERT CORRESPONDING #( ls_api_hdr MAPPING
          SalesOrder              = sales_order
          SalesOrderType          = sales_order_type
          SalesOrganization       = sales_organization
          DistributionChannel     = distribution_channel
          OrganizationDivision    = organization_division
          SalesGroup              = sales_group
          SalesOffice             = sales_office
          SalesDistrict           = sales_district
          SoldToParty             = sold_to_party
          CreationDate            = creation_date
          CreatedByUser           = created_by_user
          PurchaseOrderByCustomer = purchase_order_by_customer
          RequestedDeliveryDate   = requested_delivery_date ) INTO TABLE rt_hdr.
    ENDLOOP.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA lv_error TYPE string.

    TRY.
        DATA(lo_proxy) = get_remote_proxy( ).

        DATA lt_hdr_remote TYPE ty_t_hdr_remote.
        DATA lv_count      TYPE int8.

        read_sales_order_headers( EXPORTING io_proxy      = lo_proxy
                                            it_salesorder = VALUE ty_r_sales_order( ) " none -> list
                                            iv_top        = 10
                                            iv_skip       = 0
                                  IMPORTING et_hdr_remote = lt_hdr_remote
                                            ev_count      = lv_count ).

        IF lt_hdr_remote IS INITIAL.
          out->write( 'No sales orders found' ).
          RETURN.
        ENDIF.

        out->write( |Found { lines( lt_hdr_remote ) } latest sales orders| ).
        LOOP AT lt_hdr_remote INTO DATA(ls_order).
          out->write(
              |SalesOrder: { ls_order-sales_order }, Created: { ls_order-creation_date }, Type: { ls_order-sales_order_type }, Customer PO: { ls_order-purchase_order_by_customer }| ).
        ENDLOOP.

      CATCH cx_root INTO DATA(lx).
        lv_error = cl_message_helper=>get_latest_t100_exception( lx )->if_message~get_longtext( ).
        out->write( lv_error ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
