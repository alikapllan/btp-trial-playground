CLASS zcx_ahk_rap_ce_sales_order DEFINITION
  PUBLIC
  INHERITING FROM cx_rap_query_provider FINAL
  CREATE PUBLIC.
  " supports both custom text and text based on a message class

  " usage example :
*  RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order(
*            iv_text  = |YOUR_CUSTOM_TEXT { lx_error->get_text( ) }|
*            previous = lx_dest_error ).
*  RAISE EXCEPTION NEW zcx_ahk_rap_ce_sales_order( textid   = VALUE scx_t100key( msgid = 'YOUR_MESSAGE_CLASS'
*                                                                                msgno = '001' )
*                                                        iv_msgv1 = |PLACEHOLDER_VALUE|
*                                                        previous = lx_error ).

  PUBLIC SECTION.
    INTERFACES if_t100_message.

    DATA mv_msgv1 TYPE symsgv.
    DATA mv_msgv2 TYPE symsgv.
    DATA mv_msgv3 TYPE symsgv.
    DATA mv_msgv4 TYPE symsgv.

    METHODS constructor
      IMPORTING iv_text   TYPE string      OPTIONAL
                textid    TYPE scx_t100key OPTIONAL
                iv_msgv1  TYPE symsgv      OPTIONAL
                iv_msgv2  TYPE symsgv      OPTIONAL
                iv_msgv3  TYPE symsgv      OPTIONAL
                iv_msgv4  TYPE symsgv      OPTIONAL
                !previous LIKE previous    OPTIONAL.

    METHODS get_text REDEFINITION.

  PRIVATE SECTION.
    DATA mv_text TYPE string.
ENDCLASS.


CLASS zcx_ahk_rap_ce_sales_order IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( previous = previous ).

    mv_text  = iv_text.

    mv_msgv1 = iv_msgv1.
    mv_msgv2 = iv_msgv2.
    mv_msgv3 = iv_msgv3.
    mv_msgv4 = iv_msgv4.

    IF textid IS INITIAL.
      RETURN.
    ENDIF.

    if_t100_message~t100key = textid.

    " Ensure attributes are mapped to the PUBLIC fields above
    IF me->if_t100_message~t100key-attr1 IS INITIAL.
      if_t100_message~t100key-attr1 = 'MV_MSGV1'.
    ENDIF.
    IF me->if_t100_message~t100key-attr2 IS INITIAL.
      if_t100_message~t100key-attr2 = 'MV_MSGV2'.
    ENDIF.
    IF me->if_t100_message~t100key-attr3 IS INITIAL.
      if_t100_message~t100key-attr3 = 'MV_MSGV3'.
    ENDIF.
    IF me->if_t100_message~t100key-attr4 IS INITIAL.
      if_t100_message~t100key-attr4 = 'MV_MSGV4'.
    ENDIF.
  ENDMETHOD.

  METHOD get_text.
    IF mv_text IS NOT INITIAL.
      result = mv_text.
      RETURN.
    ENDIF.

    result = super->get_text( ).
  ENDMETHOD.
ENDCLASS.
