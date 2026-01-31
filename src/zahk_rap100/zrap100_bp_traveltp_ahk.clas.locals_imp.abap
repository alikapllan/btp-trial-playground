CLASS lhc_zrap100_r_traveltp_ahk DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS:
      BEGIN OF travel_status,
        open     TYPE c LENGTH 1 VALUE 'O', " Open
        accepted TYPE c LENGTH 1 VALUE 'A', " Accepted
        rejected TYPE c LENGTH 1 VALUE 'X', " Rejected
      END OF travel_status.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
              IMPORTING
                 REQUEST requested_authorizations FOR Travel
              RESULT result.
    METHODS setStatusToOpen FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Travel~setStatusToOpen.
    METHODS validateCustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~validateCustomer.

    METHODS validateDates FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~validateDates.
    METHODS earlynumbering_create FOR NUMBERING
                  IMPORTING entities FOR CREATE Travel.
ENDCLASS.


CLASS lhc_zrap100_r_traveltp_ahk IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
    DATA entity           TYPE STRUCTURE FOR CREATE zrap100_r_traveltp_ahk.
    DATA travel_id_max    TYPE /dmo/travel_id.
    " change to abap_false if you get the ABAP Runtime error 'BEHAVIOR_ILLEGAL_STATEMENT'
    DATA use_number_range TYPE abap_bool VALUE abap_true.

    " Ensure Travel ID is not set yet (idempotent)- must be checked when BO is draft-enabled
    LOOP AT entities INTO entity WHERE TravelID IS NOT INITIAL.
      APPEND CORRESPONDING #( entity ) TO mapped-travel.
    ENDLOOP.

    DATA(entities_wo_travelid) = entities.
    " Remove the entries with an existing Travel ID
    DELETE entities_wo_travelid WHERE TravelID IS NOT INITIAL.

    IF use_number_range = abap_true.
      " Get numbers
      TRY.
          cl_numberrange_runtime=>number_get( EXPORTING nr_range_nr       = '01'
                                                        object            = '/DMO/TRV_M'
                                                        quantity          = CONV #( lines( entities_wo_travelid ) )
                                              IMPORTING number            = DATA(number_range_key)
                                                        returncode        = DATA(number_range_return_code)
                                                        returned_quantity = DATA(number_range_returned_quantity) ).
        CATCH cx_number_ranges INTO DATA(lx_number_ranges).
          LOOP AT entities_wo_travelid INTO entity.
            APPEND VALUE #( %cid      = entity-%cid
                            %key      = entity-%key
                            %is_draft = entity-%is_draft
                            %msg      = lx_number_ranges )
                   TO reported-travel.
            APPEND VALUE #( %cid      = entity-%cid
                            %key      = entity-%key
                            %is_draft = entity-%is_draft )
                   TO failed-travel.
          ENDLOOP.
          RETURN.
      ENDTRY.

      " determine the first free travel ID from the number range
      travel_id_max = number_range_key - number_range_returned_quantity.
    ELSE.
      " determine the first free travel ID without number range
      " Get max travel ID from active table
      SELECT SINGLE FROM zahk_rap100_atrv
        FIELDS MAX( travel_id ) AS travelID
        INTO @travel_id_max.

      " Get max travel ID from draft table
      SELECT SINGLE FROM zrap100_dtravahk
        FIELDS MAX( travelid )
        INTO @DATA(max_travelid_draft).
      IF max_travelid_draft > travel_id_max.
        travel_id_max = max_travelid_draft.
      ENDIF.
    ENDIF.

    " Set Travel ID for new instances w/o ID
    LOOP AT entities_wo_travelid INTO entity.
      travel_id_max += 1.                    " Increment counter to get next available ID
      entity-TravelID = travel_id_max.       " Assign new ID to entity (modifies local work area)

      APPEND VALUE #( %cid      = entity-%cid      " Content ID - links request to response
                      %key      = entity-%key      " Key fields (now contains the new TravelID from above)
                      %is_draft = entity-%is_draft ) " Draft indicator
             TO mapped-travel.                     " Map generated ID back to framework via %cid
    ENDLOOP.
  ENDMETHOD.

  METHOD setStatusToOpen.
    READ ENTITIES OF zrap100_r_traveltp_ahk IN LOCAL MODE
         ENTITY Travel
         FIELDS ( OverallStatus )
         WITH CORRESPONDING #( keys )
         RESULT DATA(travels)
         FAILED DATA(read_failed).

    " If overall travel status is already set, do nothing, i.e. remove such instances
    DELETE travels WHERE OverallStatus IS NOT INITIAL.
    IF travels IS INITIAL.
      RETURN.
    ENDIF.

    " else set overall travel status to open 'O'
    MODIFY ENTITIES OF zrap100_r_traveltp_ahk IN LOCAL MODE
           ENTITY Travel
           UPDATE SET FIELDS
           WITH VALUE #( FOR travel IN travels
                         ( %tky          = travel-%tky
                           OverallStatus = travel_status-open ) )
           REPORTED DATA(update_reported).

    " set the changing parameter
    reported = CORRESPONDING #( DEEP update_reported ).
  ENDMETHOD.

  METHOD validateCustomer.
    " ---------------------------------------------------------------------
    " Validation: Check the validity of the entered customer data
    " ---------------------------------------------------------------------
    " read relevant travel instance data
    READ ENTITIES OF zrap100_r_traveltp_ahk IN LOCAL MODE
         ENTITY Travel
         FIELDS ( CustomerID )
         WITH CORRESPONDING #( keys )
         RESULT DATA(travels).

    DATA customers TYPE SORTED TABLE OF /dmo/customer WITH UNIQUE KEY customer_id.

    " optimization of DB select: extract distinct non-initial customer IDs
    customers = CORRESPONDING #( travels DISCARDING DUPLICATES MAPPING customer_id = customerID EXCEPT * ).
    DELETE customers WHERE customer_id IS INITIAL.
    IF customers IS NOT INITIAL.

      " check if customer ID exists
      SELECT FROM /dmo/customer
        FIELDS customer_id
        FOR ALL ENTRIES IN @customers
        WHERE customer_id = @customers-customer_id
        INTO TABLE @DATA(valid_customers).
    ENDIF.

    " raise msg for non existing and initial customer id
    LOOP AT travels INTO DATA(travel).

      APPEND VALUE #( %tky        = travel-%tky
                      %state_area = 'VALIDATE_CUSTOMER' )
             TO reported-travel.

      IF travel-CustomerID IS INITIAL.
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky                = travel-%tky
                        %state_area         = 'VALIDATE_CUSTOMER'
                        %msg                = NEW /dmo/cm_flight_messages(
                                                      textid   = /dmo/cm_flight_messages=>enter_customer_id
                                                      severity = if_abap_behv_message=>severity-error )
                        %element-CustomerID = if_abap_behv=>mk-on )
               TO reported-travel.

      ELSEIF travel-CustomerID IS NOT INITIAL AND NOT line_exists( valid_customers[ customer_id = travel-CustomerID ] ).
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky                = travel-%tky
                        %state_area         = 'VALIDATE_CUSTOMER'
                        %msg                = NEW /dmo/cm_flight_messages(
                                                      customer_id = travel-customerid
                                                      textid      = /dmo/cm_flight_messages=>customer_unkown
                                                      severity    = if_abap_behv_message=>severity-error )
                        %element-CustomerID = if_abap_behv=>mk-on )
               TO reported-travel.
      ENDIF.

    ENDLOOP.
  ENDMETHOD.

  METHOD validateDates.
    " ---------------------------------------------------------------------
    " Validation: Check the validity of begin and end dates
    " ---------------------------------------------------------------------

    READ ENTITIES OF zrap100_r_traveltp_ahk IN LOCAL MODE
         ENTITY Travel
         FIELDS (  BeginDate EndDate TravelID )
         WITH CORRESPONDING #( keys )
         RESULT DATA(travels).

    LOOP AT travels INTO DATA(travel).

      APPEND VALUE #( %tky        = travel-%tky
                      %state_area = 'VALIDATE_DATES' ) TO reported-travel.

      IF travel-BeginDate IS INITIAL.
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky               = travel-%tky
                        %state_area        = 'VALIDATE_DATES'
                        %msg               = NEW /dmo/cm_flight_messages(
                                                     textid   = /dmo/cm_flight_messages=>enter_begin_date
                                                     severity = if_abap_behv_message=>severity-error )
                        %element-BeginDate = if_abap_behv=>mk-on ) TO reported-travel.
      ENDIF.
      IF travel-BeginDate < cl_abap_context_info=>get_system_date( ) AND travel-BeginDate IS NOT INITIAL.
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky               = travel-%tky
                        %state_area        = 'VALIDATE_DATES'
                        %msg               = NEW /dmo/cm_flight_messages(
                                                     begin_date = travel-BeginDate
                                                     textid     = /dmo/cm_flight_messages=>begin_date_on_or_bef_sysdate
                                                     severity   = if_abap_behv_message=>severity-error )
                        %element-BeginDate = if_abap_behv=>mk-on ) TO reported-travel.
      ENDIF.
      IF travel-EndDate IS INITIAL.
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky             = travel-%tky
                        %state_area      = 'VALIDATE_DATES'
                        %msg             = NEW /dmo/cm_flight_messages(
                                                   textid   = /dmo/cm_flight_messages=>enter_end_date
                                                   severity = if_abap_behv_message=>severity-error )
                        %element-EndDate = if_abap_behv=>mk-on ) TO reported-travel.
      ENDIF.
      IF     travel-EndDate  < travel-BeginDate AND travel-BeginDate IS NOT INITIAL
         AND travel-EndDate IS NOT INITIAL.
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        APPEND VALUE #( %tky               = travel-%tky
                        %state_area        = 'VALIDATE_DATES'
                        %msg               = NEW /dmo/cm_flight_messages(
                                                     textid     = /dmo/cm_flight_messages=>begin_date_bef_end_date
                                                     begin_date = travel-BeginDate
                                                     end_date   = travel-EndDate
                                                     severity   = if_abap_behv_message=>severity-error )
                        %element-BeginDate = if_abap_behv=>mk-on
                        %element-EndDate   = if_abap_behv=>mk-on ) TO reported-travel.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
