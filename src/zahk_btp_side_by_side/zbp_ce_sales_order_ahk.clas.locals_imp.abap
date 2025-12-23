CLASS lhc_ZCE_SALES_ORDER_AHK DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
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
