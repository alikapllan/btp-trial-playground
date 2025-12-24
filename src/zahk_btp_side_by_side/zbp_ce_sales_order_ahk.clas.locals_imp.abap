CLASS lhc_ZCE_SALES_ORDER_AHK DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    "=== Deep create structure: header + TO_ITEM
    TYPES:  BEGIN OF ty_deep_create_so.
              INCLUDE TYPE zscm_test_api_sales_order_srv=>tys_a_sales_order_type.
    TYPES :   to_item TYPE zscm_test_api_sales_order_srv=>tyt_a_sales_order_item_type,
            END OF ty_deep_create_so.

    "=== helpers
    METHODS get_remote_proxy
      RETURNING VALUE(ro_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   cx_http_dest_provider_error
                cx_web_http_client_error
                /iwbep/cx_cp_remote
                /iwbep/cx_gateway.

    METHODS build_deep_create_data
      IMPORTING is_param       TYPE z_i_sales_order_create_act
      RETURNING VALUE(rs_deep) TYPE ty_deep_create_so.

    METHODS execute_deep_create
      IMPORTING io_proxy              TYPE REF TO /iwbep/if_cp_client_proxy
                is_deep               TYPE ty_deep_create_so
      RETURNING VALUE(rv_sales_order) TYPE zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zce_sales_order_ahk RESULT result.

*    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
*      IMPORTING REQUEST requested_authorizations FOR zce_sales_order_ahk RESULT result.

*    METHODS create FOR MODIFY
*      IMPORTING entities FOR CREATE zce_sales_order_ahk.

    METHODS read FOR READ
      IMPORTING keys FOR READ zce_sales_order_ahk RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zce_sales_order_ahk.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zce_sales_order_ahk RESULT result.

    METHODS createsalesorderwithitem FOR MODIFY
      IMPORTING keys FOR ACTION zce_sales_order_ahk~createsalesorderwithitem.

    METHODS getdefaultsforpopup FOR READ
      IMPORTING keys FOR FUNCTION zce_sales_order_ahk~getdefaultsforpopup RESULT result.

ENDCLASS.


CLASS lhc_ZCE_SALES_ORDER_AHK IMPLEMENTATION.
  METHOD get_instance_authorizations.
  ENDMETHOD.

*  METHOD get_global_authorizations.
*  ENDMETHOD.

*  METHOD create.
*  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD CreateSalesOrderWithItem.
    " Static action: FE typically sends one row in KEYS with %param filled.
    DATA lv_created_sales_order TYPE zscm_test_api_sales_order_srv=>tys_a_sales_order_type-sales_order.
    DATA lv_error               TYPE string.

    TRY.
        DATA(lo_proxy) = get_remote_proxy( ).

        LOOP AT keys ASSIGNING FIELD-SYMBOL(<k>).
          "-------------------------------------------------------
          " Read popup parameters
          "-------------------------------------------------------
          DATA(ls_param) = <k>-%param.  " <-- RAP-generated component

          "-------------------------------------------------------
          " Build deep create payload
          "-------------------------------------------------------
          DATA(ls_deep) = build_deep_create_data( ls_param ).

          "-------------------------------------------------------
          " Execute deep create in S/4
          "-------------------------------------------------------
          lv_created_sales_order = execute_deep_create( io_proxy = lo_proxy
                                                        is_deep  = ls_deep ).

          INSERT VALUE #( %tky = lv_created_sales_order
                          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                        text     = |Sales order { lv_created_sales_order } created| ) )
                 INTO TABLE reported-zce_sales_order_ahk.
        ENDLOOP.

      CATCH cx_http_dest_provider_error INTO DATA(lx_dest).
        lv_error = lx_dest->get_text( ).
      CATCH cx_web_http_client_error INTO DATA(lx_http).
        lv_error = lx_http->get_text( ).
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        lv_error = lx_remote->get_text( ).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gw).
        lv_error = lx_gw->get_text( ).
      CATCH cx_root INTO DATA(lx_any).
        lv_error = cl_message_helper=>get_latest_t100_exception( lx_any )->if_message~get_longtext( ).
    ENDTRY.

    IF lv_error IS NOT INITIAL.
      " Error shown ON ui
      INSERT VALUE #( %cid = keys[ 1 ]-%cid
                      %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                    text     = lv_error ) ) INTO TABLE reported-zce_sales_order_ahk.
      " Mark the call as failed
      INSERT VALUE #( %cid = keys[ 1 ]-%cid ) INTO TABLE failed-zce_sales_order_ahk.
    ENDIF.
  ENDMETHOD.

  METHOD get_remote_proxy.
    DATA lo_http_client TYPE REF TO if_web_http_client.

    DATA(lo_destination) =
      cl_http_destination_provider=>create_by_comm_arrangement( comm_scenario  = 'ZBTP_TRIAL_SAP_COM_0109'
                                                                comm_system_id = 'ZBTP_TRIAL_SAP_COM_0109'
                                                                service_id     = 'ZBTP_TRIAL_SAP_COM_0109_REST' ).

    lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

    ro_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                   is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                       proxy_model_id      = 'ZSCM_TEST_API_SALES_ORDER_SRV'
                                                       proxy_model_version = '0001' )
                   io_http_client           = lo_http_client
                   iv_relative_service_root = '' ).
  ENDMETHOD.

  METHOD build_deep_create_data.
    " Create header + one item from popup parameters
    rs_deep = VALUE #(
        sales_order_type        = is_param-SalesOrderType
        sales_organization      = is_param-SalesOrganization
        distribution_channel    = is_param-DistributionChannel
        organization_division   = is_param-OrganizationDivision
        sales_group             = is_param-SalesGroup
        sales_office            = is_param-SalesOffice
        sales_district          = is_param-SalesDistrict
        sold_to_party           = is_param-SoldToParty
        requested_delivery_date = COND #( WHEN is_param-RequestedDeliveryDate IS INITIAL
                                          THEN cl_abap_context_info=>get_system_date( )
                                          ELSE is_param-RequestedDeliveryDate )
        to_item                 = VALUE #( ( material                = is_param-Material
                                             requested_quantity      = is_param-RequestedQuantity
                                             requested_quantity_unit = is_param-RequestedQuantityUnit ) ) ).
  ENDMETHOD.

  METHOD execute_deep_create.
    DATA lo_create_request TYPE REF TO /iwbep/if_cp_request_create.
    DATA lo_response       TYPE REF TO /iwbep/if_cp_response_create.

    DATA lo_root_desc      TYPE REF TO /iwbep/if_cp_data_desc_node.
    DATA lo_item_desc      TYPE REF TO /iwbep/if_cp_data_desc_node.

    DATA ls_created        TYPE ty_deep_create_so.

    " Deep create on A_SALES_ORDER with TO_ITEM
    lo_create_request = io_proxy->create_resource_for_entity_set( 'A_SALES_ORDER' )->create_request_for_create( ).

    " Describe which properties are sent (deep)
    lo_root_desc = lo_create_request->create_data_descripton_node( ).

    " fields in the Abstract Entity of the popup
    lo_root_desc->set_properties( VALUE #( ( CONV #( 'SALES_ORDER_TYPE' ) )
                                           ( CONV #( 'SALES_ORGANIZATION' ) )
                                           ( CONV #( 'DISTRIBUTION_CHANNEL' ) )
                                           ( CONV #( 'ORGANIZATION_DIVISION' ) )
                                           ( CONV #( 'SALES_GROUP' ) )
                                           ( CONV #( 'SALES_OFFICE' ) )
                                           ( CONV #( 'SALES_DISTRICT' ) )
                                           ( CONV #( 'SOLD_TO_PARTY' ) )
                                           ( CONV #( 'REQUESTED_DELIVERY_DATE' ) ) ) ).
    " fields related to TO_ITEM
    lo_item_desc = lo_root_desc->add_child( 'TO_ITEM' ).
    lo_item_desc->set_properties( VALUE #( ( CONV #( 'MATERIAL' )  )
                                           ( CONV #( 'REQUESTED_QUANTITY' )  )
                                           ( CONV #( 'REQUESTED_QUANTITY_UNIT' ) ) ) ).

    lo_create_request->set_deep_business_data( is_business_data    = is_deep
                                               io_data_description = lo_root_desc ).

    lo_response = lo_create_request->execute( ).

    lo_response->get_business_data( IMPORTING es_business_data = ls_created ).

    rv_sales_order = ls_created-sales_order.
  ENDMETHOD.

  METHOD GetDefaultsForPopup.
    " source : https://software-heroes.com/en/blog/abap-rap-popup-default-values
    LOOP AT keys INTO DATA(key).
      INSERT VALUE #( %cid = key-%cid ) INTO TABLE result REFERENCE INTO DATA(new_line).

      new_line->%param = VALUE z_i_sales_order_create_act(
                                   SalesOrderType        = 'OR'
                                   SalesOrganization     = '1710'
                                   DistributionChannel   = '10'
                                   OrganizationDivision  = '00'
                                   SalesDistrict         = 'US0003'
                                   SoldToParty           = 'USCU_L04'
                                   RequestedDeliveryDate = cl_abap_context_info=>get_system_date( )
                                   RequestedQuantityUnit = 'PC' ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.


CLASS lsc_ZCE_SALES_ORDER_AHK DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS finalize          REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save              REDEFINITION.

    METHODS cleanup           REDEFINITION.

    METHODS cleanup_finalize  REDEFINITION.

ENDCLASS.


CLASS lsc_ZCE_SALES_ORDER_AHK IMPLEMENTATION.
  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.
ENDCLASS.
