CLASS zcl_ce_sales_order_ahk DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
    " for test
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_ce_sales_order_ahk IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lo_http_client        TYPE REF TO if_web_http_client.
    DATA lo_client_proxy       TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA lo_read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA lo_read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    DATA lt_business_data_hdr  TYPE TABLE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type.
    DATA lt_business_data_itm  TYPE TABLE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_item_type.

    DATA lt_sales_orders       TYPE TABLE OF zce_sales_order_ahk.
    DATA lt_sales_order_items  TYPE TABLE OF zce_sales_order_item_ahk.
    DATA ls_sales_order        TYPE zce_sales_order_ahk.
    DATA ls_sales_order_item   TYPE zce_sales_order_item_ahk.

    DATA lv_total_count        TYPE int8.
    DATA lv_error_message      TYPE string.
    DATA lv_entity_id          TYPE string.
    DATA lv_is_item_request    TYPE abap_bool VALUE abap_false.

    DATA lt_r_sales_order      TYPE RANGE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order.
    DATA lt_filter_conditions  TYPE if_rap_query_filter=>tt_name_range_pairs.

    TRY.

        IF io_request->is_data_requested( ) = abap_false.
          RETURN.
        ENDIF.

        "=========================================================
        " MUST call paging for RAP query coverage (all paths)
        "=========================================================
        DATA(lo_paging) = io_request->get_paging( ).
        DATA(lv_top)    = lo_paging->get_page_size( ).
        DATA(lv_skip)   = lo_paging->get_offset( ).

        "=========================================================
        " 1) Determine request type
        "    BEST: entity_id equality
        "    FALLBACK: requested elements contains SalesOrderItem
        "=========================================================
        lv_entity_id = to_upper( io_request->get_entity_id( ) ).

        IF lv_entity_id = 'ZCE_SALES_ORDER_ITEM_AHK'.
          lv_is_item_request = abap_true.
        ELSEIF lv_entity_id = 'ZCE_SALES_ORDER_AHK'.
          lv_is_item_request = abap_false.
        ELSE.
          " Fallback only if some unexpected entity id appears
          TRY.
              DATA(lt_requested_elements) = io_request->get_requested_elements( ).
              LOOP AT lt_requested_elements INTO DATA(lv_element).
                IF to_upper( lv_element ) = 'SALESORDERITEM'.
                  lv_is_item_request = abap_true.
                  EXIT.
                ENDIF.
              ENDLOOP.
            CATCH cx_rap_query_provider.
              lv_is_item_request = abap_false.
          ENDTRY.
        ENDIF.

        "=========================================================
        " 2) Read SalesOrder key from filter (used in BOTH branches)
        "=========================================================
        CLEAR lt_r_sales_order.

        TRY.
            lt_filter_conditions = io_request->get_filter( )->get_as_ranges( ).
            READ TABLE lt_filter_conditions WITH KEY name = 'SALESORDER' INTO DATA(ls_filter).
            IF sy-subrc = 0 AND ls_filter-range IS NOT INITIAL.
*              lv_sales_order = ls_filter-range[ 1 ]-low.
            ENDIF.

            LOOP AT lt_filter_conditions INTO DATA(lr_filter_condition) WHERE name = 'SALESORDER'.
              LOOP AT lr_filter_condition-range INTO DATA(ls_range_sales_order).
                APPEND VALUE #( sign   = ls_range_sales_order-sign
                                option = ls_range_sales_order-option
                                low    = ls_range_sales_order-low
                                high   = ls_range_sales_order-high ) TO lt_r_sales_order.
              ENDLOOP.
            ENDLOOP.
          CATCH cx_rap_query_filter_no_range.
            " no filter
        ENDTRY.

        "=========================================================
        " 3) Create HTTP client & remote proxy (common)
        "=========================================================
        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                   comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0109'
                                   comm_system_id = 'ZBTP_TRIAL_SAP_COM_0109'
                                   service_id     = 'ZBTP_TRIAL_SAP_COM_0109_REST' ).

        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                  proxy_model_id      = 'ZSCM_TEST_API_SALES_ORDER_SRV'
                                                                  proxy_model_version = '0001' )
                              io_http_client           = lo_http_client
                              iv_relative_service_root = '' ).

        "=========================================================
        " 4) Branch
        "=========================================================
        IF lv_is_item_request = abap_true.

          "========================
          " CHILD: Items
          "========================
          lo_read_list_request = lo_client_proxy->create_resource_for_entity_set( 'A_SALES_ORDER_ITEM' )->create_request_for_read( ).

          " Filter by SalesOrder (navigation /to_Items)
          IF lines( lt_r_sales_order ) > 0.
            DATA(lo_filter_factory_itm) = lo_read_list_request->create_filter_factory( ).
            DATA lt_r_sales_order_itm TYPE RANGE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order.
            lt_r_sales_order_itm = lt_r_sales_order.

            lo_read_list_request->set_filter( lo_filter_factory_itm->create_by_range(
                                                  iv_property_path = 'SALES_ORDER'
                                                  it_range         = lt_r_sales_order_itm ) ).
          ENDIF.

          lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER_ITEM' descending = abap_false ) ) ).

          IF lv_top > 0.
            lo_read_list_request->set_top( CONV #( lv_top ) ).
          ENDIF.
          IF lv_skip > 0.
            lo_read_list_request->set_skip( CONV #( lv_skip ) ).
          ENDIF.

          lo_read_list_request->request_count( ).

          lo_read_list_response = lo_read_list_request->execute( ).
          lo_read_list_response->get_business_data( IMPORTING et_business_data = lt_business_data_itm ).

          CLEAR lt_sales_order_items.
          LOOP AT lt_business_data_itm INTO DATA(ls_api_item).
            ls_sales_order_item = CORRESPONDING #( ls_api_item MAPPING
              SalesOrder            = sales_order
              SalesOrderItem        = sales_order_item
              Material              = material
              RequestedQuantity     = requested_quantity
              RequestedQuantityUnit = requested_quantity_unit ).
            APPEND ls_sales_order_item TO lt_sales_order_items.
          ENDLOOP.

          io_response->set_data( lt_sales_order_items ).

          IF io_request->is_total_numb_of_rec_requested( ).
            TRY.
                DATA lv_total_count_itm TYPE int8.
                lv_total_count_itm = lo_read_list_response->get_count( ).
                io_response->set_total_number_of_records( lv_total_count_itm ).
              CATCH /iwbep/cx_gateway.
                io_response->set_total_number_of_records( lines( lt_sales_order_items ) ).
            ENDTRY.
          ENDIF.

        ELSE.

          "========================
          " PARENT: Headers
          "========================
          DATA lt_r_sales_order_hdr TYPE RANGE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order.

          lo_read_list_request = lo_client_proxy->create_resource_for_entity_set( 'A_SALES_ORDER' )->create_request_for_read( ).

          " If object page read-by-key: apply filter and fetch single row
          IF lines( lt_r_sales_order ) = 1.
            DATA(lo_filter_factory_hdr) = lo_read_list_request->create_filter_factory( ).

            lt_r_sales_order_hdr = lt_r_sales_order.

            lo_read_list_request->set_filter( lo_filter_factory_hdr->create_by_range(
                                                  iv_property_path = 'SALES_ORDER'
                                                  it_range         = lt_r_sales_order_hdr ) ).

            lo_read_list_request->set_top( 1 ).
            lo_read_list_request->set_skip( 0 ).

          " in this case multiple sales orders requested from input field
          ELSEIF lines( lt_r_sales_order ) > 0.

            lo_filter_factory_hdr = lo_read_list_request->create_filter_factory( ).
            lt_r_sales_order_hdr = lt_r_sales_order.

            lo_read_list_request->set_filter( lo_filter_factory_hdr->create_by_range(
                                                  iv_property_path = 'SALES_ORDER'
                                                  it_range         = lt_r_sales_order_hdr ) ).

            lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

            lo_read_list_request->set_top( lines( lt_r_sales_order ) ).
            lo_read_list_request->set_skip( 0 ).
          ELSE.
            " List
            lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

            IF lv_top > 0.
              lo_read_list_request->set_top( CONV #( lv_top ) ).
            ENDIF.
            IF lv_skip > 0.
              lo_read_list_request->set_skip( CONV #( lv_skip ) ).
            ENDIF.
          ENDIF.

          lo_read_list_request->request_count( ).

          lo_read_list_response = lo_read_list_request->execute( ).
          lo_read_list_response->get_business_data( IMPORTING et_business_data = lt_business_data_hdr ).

          CLEAR lt_sales_orders.
          LOOP AT lt_business_data_hdr INTO DATA(ls_api_hdr).
            ls_sales_order = CORRESPONDING #( ls_api_hdr MAPPING
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
              RequestedDeliveryDate   = requested_delivery_date ).
            APPEND ls_sales_order TO lt_sales_orders.
          ENDLOOP.

          io_response->set_data( lt_sales_orders ).

          IF io_request->is_total_numb_of_rec_requested( ).
            TRY.
                lv_total_count = lo_read_list_response->get_count( ).
                io_response->set_total_number_of_records( lv_total_count ).
              CATCH /iwbep/cx_gateway.
                io_response->set_total_number_of_records( lines( lt_sales_orders ) ).
            ENDTRY.
          ENDIF.

        ENDIF.

      CATCH cx_web_http_client_error INTO DATA(lx_http).
        lv_error_message = |HTTP client error: { lx_http->get_text( ) }|.
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        lv_error_message = |Remote error: { lx_remote->get_text( ) }|.
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        lv_error_message = |Gateway error: { lx_gateway->get_text( ) }|.
      CATCH cx_http_dest_provider_error INTO DATA(lx_dest_error).
        lv_error_message = |Destination error: { lx_dest_error->get_text( ) }|.
    ENDTRY.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA lo_http_client        TYPE REF TO if_web_http_client.
    DATA lo_client_proxy       TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA lo_read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA lo_read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.
    DATA lt_business_data      TYPE TABLE OF zscm_test_api_sales_order_srv=>tys_a_sales_order_type.
    DATA lo_filter_factory     TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA lo_filter_node        TYPE REF TO /iwbep/if_cp_filter_node.

    TRY.
        " Create HTTP client
        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                   " Existing communication arrangement for SAP Sales Order API on SAP BTP Trial created by SAP itself
                                   " https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-build-side-by-side-extensions-for-sap-s-4hana-public-cloud-with-sap/ba-p/14235644
                                   comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0109'
                                   comm_system_id = 'ZBTP_TRIAL_SAP_COM_0109'
                                   service_id     = 'ZBTP_TRIAL_SAP_COM_0109_REST' ).

        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                  " service consumption model name uploaded via metadata file of the Service
                                                                  " https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001/overview -> API Specification -> OData EDMX
                                                                  proxy_model_id      = 'ZSCM_TEST_API_SALES_ORDER_SRV'
                                                                  proxy_model_version = '0001' )
                              io_http_client           = lo_http_client
                              iv_relative_service_root = '' ).

        " Create read request
        lo_read_list_request = lo_client_proxy->create_resource_for_entity_set( 'A_SALES_ORDER' )->create_request_for_read( ).

        " Set order by Sales Order Nr descending
        lo_read_list_request->set_orderby( VALUE #( ( property_path = 'SALES_ORDER' descending = abap_true ) ) ).

        " Set top 10
        lo_read_list_request->set_top( 10 ).

        " Execute request
        lo_read_list_response = lo_read_list_request->execute( ).

        " Get business data
        lo_read_list_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

        " Display results
        IF lt_business_data IS NOT INITIAL.
          out->write( |Found { lines( lt_business_data ) } latest sales orders| ).
          LOOP AT lt_business_data INTO DATA(ls_order).
            out->write(
                |SalesOrder: { ls_order-sales_order }, Created: { ls_order-creation_date }, Type: { ls_order-sales_order_type }, Customer PO: { ls_order-purchase_order_by_customer }| ).
          ENDLOOP.
        ELSE.
          out->write( 'No sales orders found' ).
        ENDIF.
      CATCH cx_web_http_client_error INTO DATA(lx_http).
        out->write( |HTTP client error: { lx_http->get_text( ) }| ).
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        out->write( |Remote error: { lx_remote->get_text( ) }| ).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        out->write( |Gateway error: { lx_gateway->get_text( ) }| ).
      CATCH cx_http_dest_provider_error INTO DATA(lx_dest_error).
        out->write( |Destination error: { lx_dest_error->get_text( ) }| ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
