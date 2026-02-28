"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_SALES_ORDER_SRV</em>
CLASS zscm_test_api_sales_order_srv DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type SALES_ORDER
        sales_order   TYPE string,
        "! Used for primitive type SALES_ORDER_2
        sales_order_2 TYPE string,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">FunctionResult</p>
      BEGIN OF tys_function_result,
        "! Boolean
        boolean TYPE abap_bool,
      END OF tys_function_result,
      "! <p class="shorttext synchronized">List of FunctionResult</p>
      tyt_function_result TYPE STANDARD TABLE OF tys_function_result WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function rejectApprovalRequest</p>
      "! <em>with the internal name</em> REJECT_APPROVAL_REQUEST
      BEGIN OF tys_parameters_1,
        "! SalesOrder
        sales_order TYPE string,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function releaseApprovalRequest</p>
      "! <em>with the internal name</em> RELEASE_APPROVAL_REQUEST
      BEGIN OF tys_parameters_2,
        "! SalesOrder
        sales_order TYPE string,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderBillingPlanType</p>
      BEGIN OF tys_a_sales_order_billing_pl_3,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! BillingPlanStartDate
        billing_plan_start_date    TYPE datn,
        "! BillingPlanStartDateRule
        billing_plan_start_date_ru TYPE c LENGTH 2,
        "! ReferenceBillingPlan
        reference_billing_plan     TYPE c LENGTH 10,
        "! BillingPlanCategory
        billing_plan_category      TYPE c LENGTH 1,
        "! BillingPlanType
        billing_plan_type          TYPE c LENGTH 2,
        "! BillingPlanEndDate
        billing_plan_end_date      TYPE datn,
        "! BillingPlanEndDateRule
        billing_plan_end_date_rule TYPE c LENGTH 2,
        "! BillingPlanSearchTerm
        billing_plan_search_term   TYPE c LENGTH 10,
      END OF tys_a_sales_order_billing_pl_3,
      "! <p class="shorttext synchronized">List of A_SalesOrderBillingPlanType</p>
      tyt_a_sales_order_billing_pl_3 TYPE STANDARD TABLE OF tys_a_sales_order_billing_pl_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderBillingPlanItemType</p>
      BEGIN OF tys_a_sales_order_billing_pl_4,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! <em>Key property</em> BillingPlanItem
        billing_plan_item          TYPE c LENGTH 6,
        "! BillingPlanDateCategory
        billing_plan_date_category TYPE c LENGTH 2,
        "! BillingPlanBillingDate
        billing_plan_billing_date  TYPE datn,
        "! BillingPlanAmount
        billing_plan_amount        TYPE p LENGTH 9 DECIMALS 3,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! BillingPlanAmountPercent
        billing_plan_amount_percen TYPE p LENGTH 3 DECIMALS 2,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! ProposedBillingDocumentType
        proposed_billing_document  TYPE c LENGTH 4,
        "! BillingPlanDateDescriptionCode
        billing_plan_date_descript TYPE c LENGTH 4,
        "! BillingBlockReason
        billing_block_reason       TYPE c LENGTH 2,
        "! BillingPlanServiceStartDate
        billing_plan_service_start TYPE datn,
        "! BillingPlanServiceEndDate
        billing_plan_service_end_d TYPE datn,
        "! BillingPlanRelatedBillgStatus
        billing_plan_related_billg TYPE c LENGTH 1,
        "! BillingPlanType
        billing_plan_type          TYPE c LENGTH 2,
        "! AdoptingBillingDateID
        adopting_billing_date_id   TYPE c LENGTH 1,
        "! BillingPlanBillingRule
        billing_plan_billing_rule  TYPE c LENGTH 1,
        "! BillingPlanMilestoneUsage
        billing_plan_milestone_usa TYPE c LENGTH 5,
        "! BillgPlnDteCorrectionRfndType
        billg_pln_dte_correction_r TYPE c LENGTH 1,
        "! AccountingExchangeRate
        accounting_exchange_rate   TYPE p LENGTH 5 DECIMALS 5,
        "! PostponementReason
        postponement_reason        TYPE c LENGTH 255,
      END OF tys_a_sales_order_billing_pl_4,
      "! <p class="shorttext synchronized">List of A_SalesOrderBillingPlanItemType</p>
      tyt_a_sales_order_billing_pl_4 TYPE STANDARD TABLE OF tys_a_sales_order_billing_pl_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderHeaderPartnerType</p>
      BEGIN OF tys_a_sales_order_header_par_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! PartnerFunctionInternalCode
        partner_function_internal  TYPE c LENGTH 2,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Personnel
        personnel                  TYPE c LENGTH 8,
        "! ContactPerson
        contact_person             TYPE c LENGTH 10,
        "! WorkAssignmentExternalID
        work_assignment_external_i TYPE c LENGTH 100,
        "! ReferenceBusinessPartner
        reference_business_partner TYPE c LENGTH 10,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
      END OF tys_a_sales_order_header_par_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderHeaderPartnerType</p>
      tyt_a_sales_order_header_par_2 TYPE STANDARD TABLE OF tys_a_sales_order_header_par_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderHeaderPrElementType</p>
      BEGIN OF tys_a_sales_order_header_pr__2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> PricingProcedureStep
        pricing_procedure_step     TYPE c LENGTH 3,
        "! <em>Key property</em> PricingProcedureCounter
        pricing_procedure_counter  TYPE c LENGTH 3,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! PricingDateTime
        pricing_date_time          TYPE c LENGTH 14,
        "! PriceConditionDeterminationDte
        price_condition_determinat TYPE datn,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! ConditionBaseValue
        condition_base_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionQuantitySAPUnit
        condition_quantity_sapunit TYPE c LENGTH 3,
        "! ConditionQuantityISOUnit
        condition_quantity_isounit TYPE c LENGTH 3,
        "! ConditionCategory
        condition_category         TYPE c LENGTH 1,
        "! ConditionIsForStatistics
        condition_is_for_statistic TYPE abap_bool,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! ConditionOrigin
        condition_origin           TYPE c LENGTH 1,
        "! IsGroupCondition
        is_group_condition         TYPE c LENGTH 1,
        "! ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 3,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! WithholdingTaxCode
        withholding_tax_code       TYPE c LENGTH 2,
        "! CndnRoundingOffDiffAmount
        cndn_rounding_off_diff_amo TYPE p LENGTH 4 DECIMALS 3,
        "! ConditionAmount
        condition_amount           TYPE p LENGTH 9 DECIMALS 3,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! ConditionControl
        condition_control          TYPE c LENGTH 1,
        "! ConditionInactiveReason
        condition_inactive_reason  TYPE c LENGTH 1,
        "! ConditionClass
        condition_class            TYPE c LENGTH 1,
        "! PrcgProcedureCounterForHeader
        prcg_procedure_counter_for TYPE c LENGTH 3,
        "! FactorForConditionBasisValue
        factor_for_condition_basis TYPE /iwbep/v4_float,
        "! StructureCondition
        structure_condition        TYPE c LENGTH 1,
        "! PeriodFactorForCndnBasisValue
        period_factor_for_cndn_bas TYPE /iwbep/v4_float,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 3,
        "! ConditionScaleBasisValue
        condition_scale_basis_valu TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionScaleBasisUnit
        condition_scale_basis_unit TYPE c LENGTH 3,
        "! ConditionScaleBasisCurrency
        condition_scale_basis_curr TYPE c LENGTH 5,
        "! CndnIsRelevantForIntcoBilling
        cndn_is_relevant_for_intco TYPE abap_bool,
        "! ConditionIsManuallyChanged
        condition_is_manually_chan TYPE abap_bool,
        "! ConditionIsForConfiguration
        condition_is_for_configura TYPE abap_bool,
        "! VariantCondition
        variant_condition          TYPE c LENGTH 26,
      END OF tys_a_sales_order_header_pr__2,
      "! <p class="shorttext synchronized">List of A_SalesOrderHeaderPrElementType</p>
      tyt_a_sales_order_header_pr__2 TYPE STANDARD TABLE OF tys_a_sales_order_header_pr__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemBillingPlanType</p>
      BEGIN OF tys_a_sales_order_item_billi_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! BillingPlanIsInHeader
        billing_plan_is_in_header  TYPE abap_bool,
        "! BillingPlanStartDate
        billing_plan_start_date    TYPE datn,
        "! BillingPlanStartDateRule
        billing_plan_start_date_ru TYPE c LENGTH 2,
        "! ReferenceBillingPlan
        reference_billing_plan     TYPE c LENGTH 10,
        "! BillingPlanCategory
        billing_plan_category      TYPE c LENGTH 1,
        "! BillingPlanType
        billing_plan_type          TYPE c LENGTH 2,
        "! BillingPlanEndDate
        billing_plan_end_date      TYPE datn,
        "! BillingPlanEndDateRule
        billing_plan_end_date_rule TYPE c LENGTH 2,
        "! BillingPlanSearchTerm
        billing_plan_search_term   TYPE c LENGTH 10,
      END OF tys_a_sales_order_item_billi_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemBillingPlanType</p>
      tyt_a_sales_order_item_billi_2 TYPE STANDARD TABLE OF tys_a_sales_order_item_billi_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemPartnerType</p>
      BEGIN OF tys_a_sales_order_item_partn_3,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! PartnerFunctionInternalCode
        partner_function_internal  TYPE c LENGTH 2,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Personnel
        personnel                  TYPE c LENGTH 8,
        "! ContactPerson
        contact_person             TYPE c LENGTH 10,
        "! WorkAssignmentExternalID
        work_assignment_external_i TYPE c LENGTH 100,
        "! ReferenceBusinessPartner
        reference_business_partner TYPE c LENGTH 10,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
      END OF tys_a_sales_order_item_partn_3,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemPartnerType</p>
      tyt_a_sales_order_item_partn_3 TYPE STANDARD TABLE OF tys_a_sales_order_item_partn_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemPartnerAddressType</p>
      BEGIN OF tys_a_sales_order_item_partn_4,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! OrganizationName1
        organization_name_1        TYPE c LENGTH 40,
        "! OrganizationName2
        organization_name_2        TYPE c LENGTH 40,
        "! OrganizationName3
        organization_name_3        TYPE c LENGTH 40,
        "! OrganizationName4
        organization_name_4        TYPE c LENGTH 40,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! MobilePhoneCountry
        mobile_phone_country       TYPE c LENGTH 3,
        "! MobileNumber
        mobile_number              TYPE c LENGTH 30,
        "! PhoneNumberCountry
        phone_number_country       TYPE c LENGTH 3,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneExtensionNumber
        phone_extension_number     TYPE c LENGTH 10,
        "! FaxNumberCountry
        fax_number_country         TYPE c LENGTH 3,
        "! FaxAreaCodeSubscriberNumber
        fax_area_code_subscriber_n TYPE c LENGTH 30,
        "! FaxExtensionNumber
        fax_extension_number       TYPE c LENGTH 10,
      END OF tys_a_sales_order_item_partn_4,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemPartnerAddressType</p>
      tyt_a_sales_order_item_partn_4 TYPE STANDARD TABLE OF tys_a_sales_order_item_partn_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemPrElementType</p>
      BEGIN OF tys_a_sales_order_item_pr_el_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> PricingProcedureStep
        pricing_procedure_step     TYPE c LENGTH 3,
        "! <em>Key property</em> PricingProcedureCounter
        pricing_procedure_counter  TYPE c LENGTH 3,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! PricingDateTime
        pricing_date_time          TYPE c LENGTH 14,
        "! PriceConditionDeterminationDte
        price_condition_determinat TYPE datn,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! ConditionBaseValue
        condition_base_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateValue
        condition_rate_value       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 5,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionQuantitySAPUnit
        condition_quantity_sapunit TYPE c LENGTH 3,
        "! ConditionQuantityISOUnit
        condition_quantity_isounit TYPE c LENGTH 3,
        "! ConditionCategory
        condition_category         TYPE c LENGTH 1,
        "! ConditionIsForStatistics
        condition_is_for_statistic TYPE abap_bool,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! IsRelevantForAccrual
        is_relevant_for_accrual    TYPE abap_bool,
        "! CndnIsRelevantForInvoiceList
        cndn_is_relevant_for_invoi TYPE c LENGTH 1,
        "! ConditionOrigin
        condition_origin           TYPE c LENGTH 1,
        "! IsGroupCondition
        is_group_condition         TYPE c LENGTH 1,
        "! ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! ConditionSequentialNumber
        condition_sequential_numbe TYPE c LENGTH 3,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! WithholdingTaxCode
        withholding_tax_code       TYPE c LENGTH 2,
        "! CndnRoundingOffDiffAmount
        cndn_rounding_off_diff_amo TYPE p LENGTH 4 DECIMALS 3,
        "! ConditionAmount
        condition_amount           TYPE p LENGTH 9 DECIMALS 3,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! ConditionControl
        condition_control          TYPE c LENGTH 1,
        "! ConditionInactiveReason
        condition_inactive_reason  TYPE c LENGTH 1,
        "! ConditionClass
        condition_class            TYPE c LENGTH 1,
        "! PrcgProcedureCounterForHeader
        prcg_procedure_counter_for TYPE c LENGTH 3,
        "! FactorForConditionBasisValue
        factor_for_condition_basis TYPE /iwbep/v4_float,
        "! StructureCondition
        structure_condition        TYPE c LENGTH 1,
        "! PeriodFactorForCndnBasisValue
        period_factor_for_cndn_bas TYPE /iwbep/v4_float,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 3,
        "! ConditionScaleBasisValue
        condition_scale_basis_valu TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionScaleBasisUnit
        condition_scale_basis_unit TYPE c LENGTH 3,
        "! ConditionScaleBasisCurrency
        condition_scale_basis_curr TYPE c LENGTH 5,
        "! CndnIsRelevantForIntcoBilling
        cndn_is_relevant_for_intco TYPE abap_bool,
        "! ConditionIsManuallyChanged
        condition_is_manually_chan TYPE abap_bool,
        "! ConditionIsForConfiguration
        condition_is_for_configura TYPE abap_bool,
        "! VariantCondition
        variant_condition          TYPE c LENGTH 26,
      END OF tys_a_sales_order_item_pr_el_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemPrElementType</p>
      tyt_a_sales_order_item_pr_el_2 TYPE STANDARD TABLE OF tys_a_sales_order_item_pr_el_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemRelatedObjectType</p>
      BEGIN OF tys_a_sales_order_item_relat_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> SDDocRelatedObjectSequenceNmbr
        sddoc_related_object_seque TYPE c LENGTH 4,
        "! SDDocumentRelatedObjectType
        sddocument_related_object  TYPE c LENGTH 5,
        "! SDDocRelatedObjectSystem
        sddoc_related_object_syste TYPE c LENGTH 60,
        "! SDDocRelatedObjectReference1
        sddoc_related_object_refer TYPE c LENGTH 60,
        "! SDDocRelatedObjectReference2
        sddoc_related_object_ref_2 TYPE c LENGTH 60,
      END OF tys_a_sales_order_item_relat_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemRelatedObjectType</p>
      tyt_a_sales_order_item_relat_2 TYPE STANDARD TABLE OF tys_a_sales_order_item_relat_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemTextType</p>
      BEGIN OF tys_a_sales_order_item_text_ty,
        "! <em>Key property</em> SalesOrder
        sales_order      TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item TYPE c LENGTH 6,
        "! <em>Key property</em> Language
        language         TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id     TYPE c LENGTH 4,
        "! LongText
        long_text        TYPE string,
      END OF tys_a_sales_order_item_text_ty,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemTextType</p>
      tyt_a_sales_order_item_text_ty TYPE STANDARD TABLE OF tys_a_sales_order_item_text_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItemType</p>
      BEGIN OF tys_a_sales_order_item_type,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! HigherLevelItem
        higher_level_item          TYPE c LENGTH 6,
        "! HigherLevelItemUsage
        higher_level_item_usage    TYPE c LENGTH 1,
        "! SalesOrderItemCategory
        sales_order_item_category  TYPE c LENGTH 4,
        "! SalesOrderItemText
        sales_order_item_text      TYPE c LENGTH 40,
        "! PurchaseOrderByCustomer
        purchase_order_by_customer TYPE c LENGTH 35,
        "! PurchaseOrderByShipToParty
        purchase_order_by_ship_to  TYPE c LENGTH 35,
        "! UnderlyingPurchaseOrderItem
        underlying_purchase_order  TYPE c LENGTH 6,
        "! ExternalItemID
        external_item_id           TYPE c LENGTH 40,
        "! Material
        material                   TYPE c LENGTH 40,
        "! MaterialByCustomer
        material_by_customer       TYPE c LENGTH 35,
        "! PricingDate
        pricing_date               TYPE datn,
        "! PricingReferenceMaterial
        pricing_reference_material TYPE c LENGTH 40,
        "! BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! RequestedQuantity
        requested_quantity         TYPE p LENGTH 8 DECIMALS 3,
        "! RequestedQuantityUnit
        requested_quantity_unit    TYPE c LENGTH 3,
        "! RequestedQuantitySAPUnit
        requested_quantity_sapunit TYPE c LENGTH 3,
        "! RequestedQuantityISOUnit
        requested_quantity_isounit TYPE c LENGTH 3,
        "! OrderQuantityUnit
        order_quantity_unit        TYPE c LENGTH 3,
        "! OrderQuantitySAPUnit
        order_quantity_sapunit     TYPE c LENGTH 3,
        "! OrderQuantityISOUnit
        order_quantity_isounit     TYPE c LENGTH 3,
        "! ConfdDelivQtyInOrderQtyUnit
        confd_deliv_qty_in_order_q TYPE p LENGTH 8 DECIMALS 3,
        "! ItemGrossWeight
        item_gross_weight          TYPE p LENGTH 8 DECIMALS 3,
        "! ItemNetWeight
        item_net_weight            TYPE p LENGTH 8 DECIMALS 3,
        "! ItemWeightUnit
        item_weight_unit           TYPE c LENGTH 3,
        "! ItemWeightSAPUnit
        item_weight_sapunit        TYPE c LENGTH 3,
        "! ItemWeightISOUnit
        item_weight_isounit        TYPE c LENGTH 3,
        "! ItemVolume
        item_volume                TYPE p LENGTH 8 DECIMALS 3,
        "! ItemVolumeUnit
        item_volume_unit           TYPE c LENGTH 3,
        "! ItemVolumeSAPUnit
        item_volume_sapunit        TYPE c LENGTH 3,
        "! ItemVolumeISOUnit
        item_volume_isounit        TYPE c LENGTH 3,
        "! OriginallyRequestedMaterial
        originally_requested_mater TYPE c LENGTH 40,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! NetAmount
        net_amount                 TYPE p LENGTH 9 DECIMALS 3,
        "! TotalSDDocReferenceStatus
        total_sddoc_reference_stat TYPE c LENGTH 1,
        "! SDDocReferenceStatus
        sddoc_reference_status     TYPE c LENGTH 1,
        "! MaterialSubstitutionReason
        material_substitution_reas TYPE c LENGTH 4,
        "! MaterialGroup
        material_group             TYPE c LENGTH 9,
        "! MaterialPricingGroup
        material_pricing_group     TYPE c LENGTH 2,
        "! AdditionalMaterialGroup1
        additional_material_group  TYPE c LENGTH 3,
        "! AdditionalMaterialGroup2
        additional_material_grou_2 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup3
        additional_material_grou_3 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup4
        additional_material_grou_4 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup5
        additional_material_grou_5 TYPE c LENGTH 3,
        "! BillingDocumentDate
        billing_document_date      TYPE datn,
        "! ContractAccount
        contract_account           TYPE c LENGTH 12,
        "! AdditionalValueDays
        additional_value_days      TYPE c LENGTH 2,
        "! ServicesRenderedDate
        services_rendered_date     TYPE datn,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! ProductionPlant
        production_plant           TYPE c LENGTH 4,
        "! OriginalPlant
        original_plant             TYPE c LENGTH 4,
        "! AltvBsdConfSubstitutionStatus
        altv_bsd_conf_substitution TYPE c LENGTH 1,
        "! StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! DeliveryGroup
        delivery_group             TYPE c LENGTH 3,
        "! ShippingPoint
        shipping_point             TYPE c LENGTH 4,
        "! ShippingType
        shipping_type              TYPE c LENGTH 2,
        "! DeliveryPriority
        delivery_priority          TYPE c LENGTH 2,
        "! DeliveryDateQuantityIsFixed
        delivery_date_quantity_is  TYPE abap_bool,
        "! DeliveryDateTypeRule
        delivery_date_type_rule    TYPE c LENGTH 1,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! TaxAmount
        tax_amount                 TYPE p LENGTH 8 DECIMALS 3,
        "! ProductTaxClassification1
        product_tax_classification TYPE c LENGTH 1,
        "! ProductTaxClassification2
        product_tax_classificati_2 TYPE c LENGTH 1,
        "! ProductTaxClassification3
        product_tax_classificati_3 TYPE c LENGTH 1,
        "! ProductTaxClassification4
        product_tax_classificati_4 TYPE c LENGTH 1,
        "! ProductTaxClassification5
        product_tax_classificati_5 TYPE c LENGTH 1,
        "! ProductTaxClassification6
        product_tax_classificati_6 TYPE c LENGTH 1,
        "! ProductTaxClassification7
        product_tax_classificati_7 TYPE c LENGTH 1,
        "! ProductTaxClassification8
        product_tax_classificati_8 TYPE c LENGTH 1,
        "! ProductTaxClassification9
        product_tax_classificati_9 TYPE c LENGTH 1,
        "! MatlAccountAssignmentGroup
        matl_account_assignment_gr TYPE c LENGTH 2,
        "! CostAmount
        cost_amount                TYPE p LENGTH 8 DECIMALS 3,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! FixedValueDate
        fixed_value_date           TYPE datn,
        "! CustomerGroup
        customer_group             TYPE c LENGTH 2,
        "! SalesDocumentRjcnReason
        sales_document_rjcn_reason TYPE c LENGTH 2,
        "! ItemBillingBlockReason
        item_billing_block_reason  TYPE c LENGTH 2,
        "! SlsDocIsRlvtForProofOfDeliv
        sls_doc_is_rlvt_for_proof  TYPE abap_bool,
        "! WBSElement
        wbselement                 TYPE c LENGTH 24,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! AccountingExchangeRate
        accounting_exchange_rate   TYPE p LENGTH 5 DECIMALS 5,
        "! ReferenceSDDocument
        reference_sddocument       TYPE c LENGTH 10,
        "! ReferenceSDDocumentItem
        reference_sddocument_item  TYPE c LENGTH 6,
        "! SDProcessStatus
        sdprocess_status           TYPE c LENGTH 1,
        "! DeliveryStatus
        delivery_status            TYPE c LENGTH 1,
        "! OrderRelatedBillingStatus
        order_related_billing_stat TYPE c LENGTH 1,
        "! Subtotal1Amount
        subtotal_1_amount          TYPE p LENGTH 8 DECIMALS 3,
        "! Subtotal2Amount
        subtotal_2_amount          TYPE p LENGTH 8 DECIMALS 3,
        "! Subtotal3Amount
        subtotal_3_amount          TYPE p LENGTH 8 DECIMALS 3,
        "! Subtotal4Amount
        subtotal_4_amount          TYPE p LENGTH 8 DECIMALS 3,
        "! Subtotal5Amount
        subtotal_5_amount          TYPE p LENGTH 8 DECIMALS 3,
        "! Subtotal6Amount
        subtotal_6_amount          TYPE p LENGTH 8 DECIMALS 3,
      END OF tys_a_sales_order_item_type,
      "! <p class="shorttext synchronized">List of A_SalesOrderItemType</p>
      tyt_a_sales_order_item_type TYPE STANDARD TABLE OF tys_a_sales_order_item_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItmPrecdgProcFlowType</p>
      BEGIN OF tys_a_sales_order_itm_precdg_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> DocRelationshipUUID
        doc_relationship_uuid      TYPE sysuuid_x16,
        "! PrecedingDocument
        preceding_document         TYPE c LENGTH 10,
        "! PrecedingDocumentItem
        preceding_document_item    TYPE c LENGTH 6,
        "! PrecedingDocumentCategory
        preceding_document_categor TYPE c LENGTH 4,
        "! ProcessFlowLevel
        process_flow_level         TYPE c LENGTH 2,
        "! RelatedProcFlowDocStsFieldName
        related_proc_flow_doc_sts  TYPE c LENGTH 30,
        "! SDProcessStatus
        sdprocess_status           TYPE c LENGTH 1,
        "! AccountingTransferStatus
        accounting_transfer_status TYPE c LENGTH 1,
        "! PrelimBillingDocumentStatus
        prelim_billing_document_st TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangeDate
        last_change_date           TYPE datn,
      END OF tys_a_sales_order_itm_precdg_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderItmPrecdgProcFlowType</p>
      tyt_a_sales_order_itm_precdg_2 TYPE STANDARD TABLE OF tys_a_sales_order_itm_precdg_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderItmSubsqntProcFlowType</p>
      BEGIN OF tys_a_sales_order_itm_subsqn_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> DocRelationshipUUID
        doc_relationship_uuid      TYPE sysuuid_x16,
        "! SubsequentDocument
        subsequent_document        TYPE c LENGTH 10,
        "! SubsequentDocumentItem
        subsequent_document_item   TYPE c LENGTH 6,
        "! SubsequentDocumentCategory
        subsequent_document_catego TYPE c LENGTH 4,
        "! ProcessFlowLevel
        process_flow_level         TYPE c LENGTH 2,
        "! RelatedProcFlowDocStsFieldName
        related_proc_flow_doc_sts  TYPE c LENGTH 30,
        "! SDProcessStatus
        sdprocess_status           TYPE c LENGTH 1,
        "! AccountingTransferStatus
        accounting_transfer_status TYPE c LENGTH 1,
        "! PrelimBillingDocumentStatus
        prelim_billing_document_st TYPE c LENGTH 1,
        "! SubsqntDocItmPrecdgDocument
        subsqnt_doc_itm_precdg_doc TYPE c LENGTH 10,
        "! SubsqntDocItmPrecdgDocItem
        subsqnt_doc_itm_precdg_d_2 TYPE c LENGTH 6,
        "! SubsqntDocItmPrecdgDocCategory
        subsqnt_doc_itm_precdg_d_3 TYPE c LENGTH 4,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangeDate
        last_change_date           TYPE datn,
      END OF tys_a_sales_order_itm_subsqn_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderItmSubsqntProcFlowType</p>
      tyt_a_sales_order_itm_subsqn_2 TYPE STANDARD TABLE OF tys_a_sales_order_itm_subsqn_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderPartnerAddressType</p>
      BEGIN OF tys_a_sales_order_partner_ad_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! OrganizationName1
        organization_name_1        TYPE c LENGTH 40,
        "! OrganizationName2
        organization_name_2        TYPE c LENGTH 40,
        "! OrganizationName3
        organization_name_3        TYPE c LENGTH 40,
        "! OrganizationName4
        organization_name_4        TYPE c LENGTH 40,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! MobilePhoneCountry
        mobile_phone_country       TYPE c LENGTH 3,
        "! MobileNumber
        mobile_number              TYPE c LENGTH 30,
        "! PhoneNumberCountry
        phone_number_country       TYPE c LENGTH 3,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! PhoneExtensionNumber
        phone_extension_number     TYPE c LENGTH 10,
        "! FaxNumberCountry
        fax_number_country         TYPE c LENGTH 3,
        "! FaxAreaCodeSubscriberNumber
        fax_area_code_subscriber_n TYPE c LENGTH 30,
        "! FaxExtensionNumber
        fax_extension_number       TYPE c LENGTH 10,
      END OF tys_a_sales_order_partner_ad_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderPartnerAddressType</p>
      tyt_a_sales_order_partner_ad_2 TYPE STANDARD TABLE OF tys_a_sales_order_partner_ad_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderPrecdgProcFlowType</p>
      BEGIN OF tys_a_sales_order_precdg_pro_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> DocRelationshipUUID
        doc_relationship_uuid      TYPE sysuuid_x16,
        "! PrecedingDocument
        preceding_document         TYPE c LENGTH 10,
        "! PrecedingDocumentCategory
        preceding_document_categor TYPE c LENGTH 4,
        "! ProcessFlowLevel
        process_flow_level         TYPE c LENGTH 2,
        "! OverallSDProcessStatus
        overall_sdprocess_status   TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangeDate
        last_change_date           TYPE datn,
      END OF tys_a_sales_order_precdg_pro_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderPrecdgProcFlowType</p>
      tyt_a_sales_order_precdg_pro_2 TYPE STANDARD TABLE OF tys_a_sales_order_precdg_pro_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderRelatedObjectType</p>
      BEGIN OF tys_a_sales_order_related_ob_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SDDocRelatedObjectSequenceNmbr
        sddoc_related_object_seque TYPE c LENGTH 4,
        "! SDDocumentRelatedObjectType
        sddocument_related_object  TYPE c LENGTH 5,
        "! SDDocRelatedObjectSystem
        sddoc_related_object_syste TYPE c LENGTH 60,
        "! SDDocRelatedObjectReference1
        sddoc_related_object_refer TYPE c LENGTH 60,
        "! SDDocRelatedObjectReference2
        sddoc_related_object_ref_2 TYPE c LENGTH 60,
      END OF tys_a_sales_order_related_ob_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderRelatedObjectType</p>
      tyt_a_sales_order_related_ob_2 TYPE STANDARD TABLE OF tys_a_sales_order_related_ob_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderScheduleLineType</p>
      BEGIN OF tys_a_sales_order_schedule_l_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> ScheduleLine
        schedule_line              TYPE c LENGTH 4,
        "! RequestedDeliveryDate
        requested_delivery_date    TYPE datn,
        "! ConfirmedDeliveryDate
        confirmed_delivery_date    TYPE datn,
        "! OrderQuantityUnit
        order_quantity_unit        TYPE c LENGTH 3,
        "! OrderQuantitySAPUnit
        order_quantity_sapunit     TYPE c LENGTH 3,
        "! OrderQuantityISOUnit
        order_quantity_isounit     TYPE c LENGTH 3,
        "! ScheduleLineOrderQuantity
        schedule_line_order_quanti TYPE p LENGTH 7 DECIMALS 3,
        "! ConfdOrderQtyByMatlAvailCheck
        confd_order_qty_by_matl_av TYPE p LENGTH 7 DECIMALS 3,
        "! DeliveredQtyInOrderQtyUnit
        delivered_qty_in_order_qty TYPE p LENGTH 7 DECIMALS 3,
        "! OpenConfdDelivQtyInOrdQtyUnit
        open_confd_deliv_qty_in_or TYPE p LENGTH 7 DECIMALS 3,
        "! CorrectedQtyInOrderQtyUnit
        corrected_qty_in_order_qty TYPE p LENGTH 7 DECIMALS 3,
        "! DelivBlockReasonForSchedLine
        deliv_block_reason_for_sch TYPE c LENGTH 2,
      END OF tys_a_sales_order_schedule_l_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderScheduleLineType</p>
      tyt_a_sales_order_schedule_l_2 TYPE STANDARD TABLE OF tys_a_sales_order_schedule_l_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderSubsqntProcFlowType</p>
      BEGIN OF tys_a_sales_order_subsqnt_pr_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> DocRelationshipUUID
        doc_relationship_uuid      TYPE sysuuid_x16,
        "! SubsequentDocument
        subsequent_document        TYPE c LENGTH 10,
        "! SubsequentDocumentCategory
        subsequent_document_catego TYPE c LENGTH 4,
        "! ProcessFlowLevel
        process_flow_level         TYPE c LENGTH 2,
        "! OverallSDProcessStatus
        overall_sdprocess_status   TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangeDate
        last_change_date           TYPE datn,
      END OF tys_a_sales_order_subsqnt_pr_2,
      "! <p class="shorttext synchronized">List of A_SalesOrderSubsqntProcFlowType</p>
      tyt_a_sales_order_subsqnt_pr_2 TYPE STANDARD TABLE OF tys_a_sales_order_subsqnt_pr_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderTextType</p>
      BEGIN OF tys_a_sales_order_text_type,
        "! <em>Key property</em> SalesOrder
        sales_order  TYPE c LENGTH 10,
        "! <em>Key property</em> Language
        language     TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id TYPE c LENGTH 4,
        "! LongText
        long_text    TYPE string,
      END OF tys_a_sales_order_text_type,
      "! <p class="shorttext synchronized">List of A_SalesOrderTextType</p>
      tyt_a_sales_order_text_type TYPE STANDARD TABLE OF tys_a_sales_order_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SalesOrderType</p>
      BEGIN OF tys_a_sales_order_type,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! SalesOrderType
        sales_order_type           TYPE c LENGTH 4,
        "! SalesOrderTypeInternalCode
        sales_order_type_internal  TYPE c LENGTH 4,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! OrganizationDivision
        organization_division      TYPE c LENGTH 2,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesDistrict
        sales_district             TYPE c LENGTH 6,
        "! SoldToParty
        sold_to_party              TYPE c LENGTH 10,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! SenderBusinessSystemName
        sender_business_system_nam TYPE c LENGTH 60,
        "! ExternalDocumentID
        external_document_id       TYPE c LENGTH 40,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! ExternalDocLastChangeDateTime
        external_doc_last_change_d TYPE timestampl,
        "! PurchaseOrderByCustomer
        purchase_order_by_customer TYPE c LENGTH 35,
        "! PurchaseOrderByShipToParty
        purchase_order_by_ship_to  TYPE c LENGTH 35,
        "! CustomerPurchaseOrderType
        customer_purchase_order_ty TYPE c LENGTH 4,
        "! CustomerPurchaseOrderDate
        customer_purchase_order_da TYPE datn,
        "! SalesOrderDate
        sales_order_date           TYPE datn,
        "! TotalNetAmount
        total_net_amount           TYPE p LENGTH 9 DECIMALS 3,
        "! OverallDeliveryStatus
        overall_delivery_status    TYPE c LENGTH 1,
        "! TotalBlockStatus
        total_block_status         TYPE c LENGTH 1,
        "! OverallOrdReltdBillgStatus
        overall_ord_reltd_billg_st TYPE c LENGTH 1,
        "! OverallSDDocReferenceStatus
        overall_sddoc_reference_st TYPE c LENGTH 1,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! SDDocumentReason
        sddocument_reason          TYPE c LENGTH 3,
        "! PricingDate
        pricing_date               TYPE datn,
        "! PriceDetnExchangeRate
        price_detn_exchange_rate   TYPE p LENGTH 5 DECIMALS 5,
        "! BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! RequestedDeliveryDate
        requested_delivery_date    TYPE datn,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! CompleteDeliveryIsDefined
        complete_delivery_is_defin TYPE abap_bool,
        "! ShippingType
        shipping_type              TYPE c LENGTH 2,
        "! HeaderBillingBlockReason
        header_billing_block_reaso TYPE c LENGTH 2,
        "! DeliveryBlockReason
        delivery_block_reason      TYPE c LENGTH 2,
        "! DeliveryDateTypeRule
        delivery_date_type_rule    TYPE c LENGTH 1,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
        "! CustomerPriceGroup
        customer_price_group       TYPE c LENGTH 2,
        "! PriceListType
        price_list_type            TYPE c LENGTH 2,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! PaymentMethod
        payment_method             TYPE c LENGTH 1,
        "! FixedValueDate
        fixed_value_date           TYPE datn,
        "! AssignmentReference
        assignment_reference       TYPE c LENGTH 18,
        "! ReferenceSDDocument
        reference_sddocument       TYPE c LENGTH 10,
        "! ReferenceSDDocumentCategory
        reference_sddocument_categ TYPE c LENGTH 4,
        "! AccountingDocExternalReference
        accounting_doc_external_re TYPE c LENGTH 16,
        "! CustomerAccountAssignmentGroup
        customer_account_assignmen TYPE c LENGTH 2,
        "! AccountingExchangeRate
        accounting_exchange_rate   TYPE p LENGTH 5 DECIMALS 5,
        "! CustomerGroup
        customer_group             TYPE c LENGTH 2,
        "! AdditionalCustomerGroup1
        additional_customer_group  TYPE c LENGTH 3,
        "! AdditionalCustomerGroup2
        additional_customer_grou_2 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup3
        additional_customer_grou_3 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup4
        additional_customer_grou_4 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup5
        additional_customer_grou_5 TYPE c LENGTH 3,
        "! SlsDocIsRlvtForProofOfDeliv
        sls_doc_is_rlvt_for_proof  TYPE abap_bool,
        "! CustomerTaxClassification1
        customer_tax_classificatio TYPE c LENGTH 1,
        "! CustomerTaxClassification2
        customer_tax_classificat_2 TYPE c LENGTH 1,
        "! CustomerTaxClassification3
        customer_tax_classificat_3 TYPE c LENGTH 1,
        "! CustomerTaxClassification4
        customer_tax_classificat_4 TYPE c LENGTH 1,
        "! CustomerTaxClassification5
        customer_tax_classificat_5 TYPE c LENGTH 1,
        "! CustomerTaxClassification6
        customer_tax_classificat_6 TYPE c LENGTH 1,
        "! CustomerTaxClassification7
        customer_tax_classificat_7 TYPE c LENGTH 1,
        "! CustomerTaxClassification8
        customer_tax_classificat_8 TYPE c LENGTH 1,
        "! CustomerTaxClassification9
        customer_tax_classificat_9 TYPE c LENGTH 1,
        "! TaxDepartureCountry
        tax_departure_country      TYPE c LENGTH 3,
        "! VATRegistrationCountry
        vatregistration_country    TYPE c LENGTH 3,
        "! SalesOrderApprovalReason
        sales_order_approval_reaso TYPE c LENGTH 4,
        "! SalesDocApprovalStatus
        sales_doc_approval_status  TYPE c LENGTH 1,
        "! OverallSDProcessStatus
        overall_sdprocess_status   TYPE c LENGTH 1,
        "! TotalCreditCheckStatus
        total_credit_check_status  TYPE c LENGTH 1,
        "! OverallTotalDeliveryStatus
        overall_total_delivery_sta TYPE c LENGTH 1,
        "! OverallSDDocumentRejectionSts
        overall_sddocument_rejecti TYPE c LENGTH 1,
        "! BillingDocumentDate
        billing_document_date      TYPE datn,
        "! ContractAccount
        contract_account           TYPE c LENGTH 12,
        "! AdditionalValueDays
        additional_value_days      TYPE c LENGTH 2,
        "! CustomerPurchaseOrderSuplmnt
        customer_purchase_order_su TYPE c LENGTH 4,
        "! ServicesRenderedDate
        services_rendered_date     TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_a_sales_order_type,
      "! <p class="shorttext synchronized">List of A_SalesOrderType</p>
      tyt_a_sales_order_type TYPE STANDARD TABLE OF tys_a_sales_order_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsOrderItemBillingPlanItemType</p>
      BEGIN OF tys_a_sls_order_item_billing_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> SalesOrderItem
        sales_order_item           TYPE c LENGTH 6,
        "! <em>Key property</em> BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! <em>Key property</em> BillingPlanItem
        billing_plan_item          TYPE c LENGTH 6,
        "! BillingPlanDateCategory
        billing_plan_date_category TYPE c LENGTH 2,
        "! BillingPlanBillingDate
        billing_plan_billing_date  TYPE datn,
        "! BillingPlanAmount
        billing_plan_amount        TYPE p LENGTH 9 DECIMALS 3,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 5,
        "! BillingPlanAmountPercent
        billing_plan_amount_percen TYPE p LENGTH 3 DECIMALS 2,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! ProposedBillingDocumentType
        proposed_billing_document  TYPE c LENGTH 4,
        "! BillingPlanDateDescriptionCode
        billing_plan_date_descript TYPE c LENGTH 4,
        "! BillingBlockReason
        billing_block_reason       TYPE c LENGTH 2,
        "! BillingPlanServiceStartDate
        billing_plan_service_start TYPE datn,
        "! BillingPlanServiceEndDate
        billing_plan_service_end_d TYPE datn,
        "! BillingPlanRelatedBillgStatus
        billing_plan_related_billg TYPE c LENGTH 1,
        "! BillingPlanType
        billing_plan_type          TYPE c LENGTH 2,
        "! AdoptingBillingDateID
        adopting_billing_date_id   TYPE c LENGTH 1,
        "! BillingPlanBillingRule
        billing_plan_billing_rule  TYPE c LENGTH 1,
        "! BillingPlanMilestoneUsage
        billing_plan_milestone_usa TYPE c LENGTH 5,
        "! BillgPlnDteCorrectionRfndType
        billg_pln_dte_correction_r TYPE c LENGTH 1,
        "! AccountingExchangeRate
        accounting_exchange_rate   TYPE p LENGTH 5 DECIMALS 5,
        "! PostponementReason
        postponement_reason        TYPE c LENGTH 255,
      END OF tys_a_sls_order_item_billing_2,
      "! <p class="shorttext synchronized">List of A_SlsOrderItemBillingPlanItemType</p>
      tyt_a_sls_order_item_billing_2 TYPE STANDARD TABLE OF tys_a_sls_order_item_billing_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_SlsOrdPaymentPlanItemDetailsType</p>
      BEGIN OF tys_a_sls_ord_payment_plan_i_2,
        "! <em>Key property</em> SalesOrder
        sales_order                TYPE c LENGTH 10,
        "! <em>Key property</em> PaymentPlanItem
        payment_plan_item          TYPE c LENGTH 6,
        "! PaymentPlan
        payment_plan               TYPE c LENGTH 10,
        "! ElectronicPaymentType
        electronic_payment_type    TYPE c LENGTH 4,
        "! ElectronicPayment
        electronic_payment         TYPE c LENGTH 25,
        "! EPaytValidityStartDate
        epayt_validity_start_date  TYPE datn,
        "! EPaytValidityEndDate
        epayt_validity_end_date    TYPE datn,
        "! ElectronicPaymentHolderName
        electronic_payment_holder  TYPE c LENGTH 40,
        "! AuthorizedAmountInAuthznCrcy
        authorized_amount_in_authz TYPE p LENGTH 9 DECIMALS 3,
        "! AuthorizationCurrency
        authorization_currency     TYPE c LENGTH 5,
        "! AuthorizationByDigitalPaytSrvc
        authorization_by_digital_p TYPE c LENGTH 10,
        "! AuthorizationByAcquirer
        authorization_by_acquirer  TYPE c LENGTH 15,
        "! AuthorizationDate
        authorization_date         TYPE datn,
        "! AuthorizationTime
        authorization_time         TYPE timn,
        "! AuthorizationStatusName
        authorization_status_name  TYPE c LENGTH 40,
        "! EPaytByDigitalPaymentSrvc
        epayt_by_digital_payment_s TYPE c LENGTH 25,
        "! ElectronicPaymentCallStatus
        electronic_payment_call_st TYPE c LENGTH 1,
        "! EPaytAuthorizationResult
        epayt_authorization_result TYPE c LENGTH 1,
        "! EPaytToBeAuthorizedAmount
        epayt_to_be_authorized_amo TYPE p LENGTH 9 DECIMALS 3,
        "! EPaytAuthorizationIsExpired
        epayt_authorization_is_exp TYPE abap_bool,
        "! EPaytAmountIsChanged
        epayt_amount_is_changed    TYPE abap_bool,
        "! PreauthorizationIsRequested
        preauthorization_is_reques TYPE abap_bool,
        "! PaymentServiceProvider
        payment_service_provider   TYPE c LENGTH 4,
        "! PaymentByPaymentServicePrvdr
        payment_by_payment_service TYPE c LENGTH 40,
        "! TransactionByPaytSrvcPrvdr
        transaction_by_payt_srvc_p TYPE c LENGTH 40,
        "! MerchantByClearingHouse
        merchant_by_clearing_house TYPE c LENGTH 15,
        "! PaymentCardAuthznRelationID
        payment_card_authzn_relati TYPE c LENGTH 44,
        "! MaximumToBeAuthorizedAmount
        maximum_to_be_authorized_a TYPE p LENGTH 9 DECIMALS 3,
        "! PaytPlnForAuthorizationItem
        payt_pln_for_authorization TYPE c LENGTH 10,
        "! PaytPlnItmForAuthorizationItem
        payt_pln_itm_for_authoriza TYPE c LENGTH 6,
      END OF tys_a_sls_ord_payment_plan_i_2,
      "! <p class="shorttext synchronized">List of A_SlsOrdPaymentPlanItemDetailsType</p>
      tyt_a_sls_ord_payment_plan_i_2 TYPE STANDARD TABLE OF tys_a_sls_ord_payment_plan_i_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_SalesOrder
        "! <br/> Collection of type 'A_SalesOrderType'
        a_sales_order              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER',
        "! A_SalesOrderBillingPlan
        "! <br/> Collection of type 'A_SalesOrderBillingPlanType'
        a_sales_order_billing_plan TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_BILLING_PLAN',
        "! A_SalesOrderBillingPlanItem
        "! <br/> Collection of type 'A_SalesOrderBillingPlanItemType'
        a_sales_order_billing_pl_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_BILLING_PL_2',
        "! A_SalesOrderHeaderPartner
        "! <br/> Collection of type 'A_SalesOrderHeaderPartnerType'
        a_sales_order_header_partn TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_HEADER_PARTN',
        "! A_SalesOrderHeaderPrElement
        "! <br/> Collection of type 'A_SalesOrderHeaderPrElementType'
        a_sales_order_header_pr_el TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_HEADER_PR_EL',
        "! A_SalesOrderItem
        "! <br/> Collection of type 'A_SalesOrderItemType'
        a_sales_order_item         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM',
        "! A_SalesOrderItemBillingPlan
        "! <br/> Collection of type 'A_SalesOrderItemBillingPlanType'
        a_sales_order_item_billing TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_BILLING',
        "! A_SalesOrderItemPartner
        "! <br/> Collection of type 'A_SalesOrderItemPartnerType'
        a_sales_order_item_partner TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_PARTNER',
        "! A_SalesOrderItemPartnerAddress
        "! <br/> Collection of type 'A_SalesOrderItemPartnerAddressType'
        a_sales_order_item_partn_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_PARTN_2',
        "! A_SalesOrderItemPrElement
        "! <br/> Collection of type 'A_SalesOrderItemPrElementType'
        a_sales_order_item_pr_elem TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_PR_ELEM',
        "! A_SalesOrderItemRelatedObject
        "! <br/> Collection of type 'A_SalesOrderItemRelatedObjectType'
        a_sales_order_item_related TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_RELATED',
        "! A_SalesOrderItemText
        "! <br/> Collection of type 'A_SalesOrderItemTextType'
        a_sales_order_item_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITEM_TEXT',
        "! A_SalesOrderItmPrecdgProcFlow
        "! <br/> Collection of type 'A_SalesOrderItmPrecdgProcFlowType'
        a_sales_order_itm_precdg_p TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITM_PRECDG_P',
        "! A_SalesOrderItmSubsqntProcFlow
        "! <br/> Collection of type 'A_SalesOrderItmSubsqntProcFlowType'
        a_sales_order_itm_subsqnt  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_ITM_SUBSQNT',
        "! A_SalesOrderPartnerAddress
        "! <br/> Collection of type 'A_SalesOrderPartnerAddressType'
        a_sales_order_partner_addr TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_PARTNER_ADDR',
        "! A_SalesOrderPrecdgProcFlow
        "! <br/> Collection of type 'A_SalesOrderPrecdgProcFlowType'
        a_sales_order_precdg_proc  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_PRECDG_PROC',
        "! A_SalesOrderRelatedObject
        "! <br/> Collection of type 'A_SalesOrderRelatedObjectType'
        a_sales_order_related_obje TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_RELATED_OBJE',
        "! A_SalesOrderScheduleLine
        "! <br/> Collection of type 'A_SalesOrderScheduleLineType'
        a_sales_order_schedule_lin TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_SCHEDULE_LIN',
        "! A_SalesOrderSubsqntProcFlow
        "! <br/> Collection of type 'A_SalesOrderSubsqntProcFlowType'
        a_sales_order_subsqnt_proc TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_SUBSQNT_PROC',
        "! A_SalesOrderText
        "! <br/> Collection of type 'A_SalesOrderTextType'
        a_sales_order_text         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SALES_ORDER_TEXT',
        "! A_SlsOrderItemBillingPlanItem
        "! <br/> Collection of type 'A_SlsOrderItemBillingPlanItemType'
        a_sls_order_item_billing_p TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_ORDER_ITEM_BILLING_P',
        "! A_SlsOrdPaymentPlanItemDetails
        "! <br/> Collection of type 'A_SlsOrdPaymentPlanItemDetailsType'
        a_sls_ord_payment_plan_ite TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_SLS_ORD_PAYMENT_PLAN_ITE',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! rejectApprovalRequest
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        reject_approval_request  TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'REJECT_APPROVAL_REQUEST',
        "! releaseApprovalRequest
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        release_approval_request TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'RELEASE_APPROVAL_REQUEST',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for FunctionResult</p>
        "! See also structure type {@link ..tys_function_result}
        BEGIN OF function_result,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF function_result,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderBillingPlanType</p>
        "! See also structure type {@link ..tys_a_sales_order_billing_pl_3}
        BEGIN OF a_sales_order_billing_pl_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlanItem
            to_billing_plan_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN_ITEM',
            "! to_SalesOrder
            to_sales_order       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_billing_pl_3,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderBillingPlanItemType</p>
        "! See also structure type {@link ..tys_a_sales_order_billing_pl_4}
        BEGIN OF a_sales_order_billing_pl_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlan
            to_billing_plan TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN',
            "! to_SalesOrder
            to_sales_order  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_billing_pl_4,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderHeaderPartnerType</p>
        "! See also structure type {@link ..tys_a_sales_order_header_par_2}
        BEGIN OF a_sales_order_header_par_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Address
            to_address     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS',
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_header_par_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderHeaderPrElementType</p>
        "! See also structure type {@link ..tys_a_sales_order_header_pr__2}
        BEGIN OF a_sales_order_header_pr__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_header_pr__2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemBillingPlanType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_billi_2}
        BEGIN OF a_sales_order_item_billi_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlanItem
            to_billing_plan_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN_ITEM',
            "! to_SalesOrder
            to_sales_order       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_billi_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemPartnerType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_partn_3}
        BEGIN OF a_sales_order_item_partn_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Address
            to_address          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ADDRESS',
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_partn_3,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemPartnerAddressType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_partn_4}
        BEGIN OF a_sales_order_item_partn_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Partner
            to_partner          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER',
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_partn_4,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemPrElementType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_pr_el_2}
        BEGIN OF a_sales_order_item_pr_el_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_pr_el_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemRelatedObjectType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_relat_2}
        BEGIN OF a_sales_order_item_relat_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_relat_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemTextType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_text_ty}
        BEGIN OF a_sales_order_item_text_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_item_text_ty,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItemType</p>
        "! See also structure type {@link ..tys_a_sales_order_item_type}
        BEGIN OF a_sales_order_item_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlan
            to_billing_plan            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN',
            "! to_Partner
            to_partner                 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER',
            "! to_PrecedingProcFlowDocItem
            to_preceding_proc_flow_doc TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRECEDING_PROC_FLOW_DOC',
            "! to_PricingElement
            to_pricing_element         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRICING_ELEMENT',
            "! to_RelatedObject
            to_related_object          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_RELATED_OBJECT',
            "! to_SalesOrder
            to_sales_order             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_ScheduleLine
            to_schedule_line           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SCHEDULE_LINE',
            "! to_SubsequentProcFlowDocItem
            to_subsequent_proc_flow_do TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUBSEQUENT_PROC_FLOW_DO',
            "! to_Text
            to_text                    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_TEXT',
          END OF navigation,
        END OF a_sales_order_item_type,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItmPrecdgProcFlowType</p>
        "! See also structure type {@link ..tys_a_sales_order_itm_precdg_2}
        BEGIN OF a_sales_order_itm_precdg_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_itm_precdg_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderItmSubsqntProcFlowType</p>
        "! See also structure type {@link ..tys_a_sales_order_itm_subsqn_2}
        BEGIN OF a_sales_order_itm_subsqn_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sales_order_itm_subsqn_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderPartnerAddressType</p>
        "! See also structure type {@link ..tys_a_sales_order_partner_ad_2}
        BEGIN OF a_sales_order_partner_ad_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Partner
            to_partner     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER',
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_partner_ad_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderPrecdgProcFlowType</p>
        "! See also structure type {@link ..tys_a_sales_order_precdg_pro_2}
        BEGIN OF a_sales_order_precdg_pro_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_precdg_pro_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderRelatedObjectType</p>
        "! See also structure type {@link ..tys_a_sales_order_related_ob_2}
        BEGIN OF a_sales_order_related_ob_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_related_ob_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderScheduleLineType</p>
        "! See also structure type {@link ..tys_a_sales_order_schedule_l_2}
        BEGIN OF a_sales_order_schedule_l_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_sales_order_schedule_l_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderSubsqntProcFlowType</p>
        "! See also structure type {@link ..tys_a_sales_order_subsqnt_pr_2}
        BEGIN OF a_sales_order_subsqnt_pr_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_subsqnt_pr_2,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderTextType</p>
        "! See also structure type {@link ..tys_a_sales_order_text_type}
        BEGIN OF a_sales_order_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sales_order_text_type,
        "! <p class="shorttext synchronized">Internal names for A_SalesOrderType</p>
        "! See also structure type {@link ..tys_a_sales_order_type}
        BEGIN OF a_sales_order_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlan
            to_billing_plan            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN',
            "! to_Item
            to_item                    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_ITEM',
            "! to_Partner
            to_partner                 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER',
            "! to_PaymentPlanItemDetails
            to_payment_plan_item_detai TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PAYMENT_PLAN_ITEM_DETAI',
            "! to_PrecedingProcFlowDoc
            to_preceding_proc_flow_doc TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRECEDING_PROC_FLOW_DOC',
            "! to_PricingElement
            to_pricing_element         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRICING_ELEMENT',
            "! to_RelatedObject
            to_related_object          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_RELATED_OBJECT',
            "! to_SubsequentProcFlowDoc
            to_subsequent_proc_flow_do TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SUBSEQUENT_PROC_FLOW_DO',
            "! to_Text
            to_text                    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_TEXT',
          END OF navigation,
        END OF a_sales_order_type,
        "! <p class="shorttext synchronized">Internal names for A_SlsOrderItemBillingPlanItemType</p>
        "! See also structure type {@link ..tys_a_sls_order_item_billing_2}
        BEGIN OF a_sls_order_item_billing_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillingPlan
            to_billing_plan     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILLING_PLAN',
            "! to_SalesOrder
            to_sales_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
            "! to_SalesOrderItem
            to_sales_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER_ITEM',
          END OF navigation,
        END OF a_sls_order_item_billing_2,
        "! <p class="shorttext synchronized">Internal names for A_SlsOrdPaymentPlanItemDetailsType</p>
        "! See also structure type {@link ..tys_a_sls_ord_payment_plan_i_2}
        BEGIN OF a_sls_ord_payment_plan_i_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesOrder
            to_sales_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_ORDER',
          END OF navigation,
        END OF a_sls_ord_payment_plan_i_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define FunctionResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_function_result RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderBillingPlanType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_billing_pl_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderBillingPlanItemType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_billing_pl_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderHeaderPartnerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_header_par_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderHeaderPrElementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_header_pr__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemBillingPlanType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_billi_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemPartnerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_partn_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemPartnerAddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_partn_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemPrElementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_pr_el_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemRelatedObjectType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_relat_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_text_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItemType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_item_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItmPrecdgProcFlowType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_itm_precdg_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderItmSubsqntProcFlowType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_itm_subsqn_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderPartnerAddressType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_partner_ad_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderPrecdgProcFlowType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_precdg_pro_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderRelatedObjectType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_related_ob_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderScheduleLineType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_schedule_l_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderSubsqntProcFlowType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_subsqnt_pr_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SalesOrderType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sales_order_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsOrderItemBillingPlanItemType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_order_item_billing_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_SlsOrdPaymentPlanItemDetailsType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_sls_ord_payment_plan_i_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define rejectApprovalRequest</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_reject_approval_request RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define releaseApprovalRequest</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_release_approval_request RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZSCM_TEST_API_SALES_ORDER_SRV IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_SALES_ORDER_SRV' ) ##NO_TEXT.

    def_function_result( ).
    def_a_sales_order_billing_pl_3( ).
    def_a_sales_order_billing_pl_4( ).
    def_a_sales_order_header_par_2( ).
    def_a_sales_order_header_pr__2( ).
    def_a_sales_order_item_billi_2( ).
    def_a_sales_order_item_partn_3( ).
    def_a_sales_order_item_partn_4( ).
    def_a_sales_order_item_pr_el_2( ).
    def_a_sales_order_item_relat_2( ).
    def_a_sales_order_item_text_ty( ).
    def_a_sales_order_item_type( ).
    def_a_sales_order_itm_precdg_2( ).
    def_a_sales_order_itm_subsqn_2( ).
    def_a_sales_order_partner_ad_2( ).
    def_a_sales_order_precdg_pro_2( ).
    def_a_sales_order_related_ob_2( ).
    def_a_sales_order_schedule_l_2( ).
    def_a_sales_order_subsqnt_pr_2( ).
    def_a_sales_order_text_type( ).
    def_a_sales_order_type( ).
    def_a_sls_order_item_billing_2( ).
    def_a_sls_ord_payment_plan_i_2( ).
    def_reject_approval_request( ).
    def_release_approval_request( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SALES_ORDER'
                            iv_element             = VALUE tys_types_for_prim_types-sales_order( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SALES_ORDER_2'
                            iv_element             = VALUE tys_types_for_prim_types-sales_order_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_a_sales_order_billing_pl_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_BILLING_PL_3'
                                    is_structure              = VALUE tys_a_sales_order_billing_pl_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderBillingPlanType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_BILLING_PLAN' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderBillingPlan' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_START_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_START_DATE_RU' ).
    lo_primitive_property->set_edm_name( 'BillingPlanStartDateRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'ReferenceBillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillingPlanCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_END_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_END_DATE_RULE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanEndDateRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SEARCH_TERM' ).
    lo_primitive_property->set_edm_name( 'BillingPlanSearchTerm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlanItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_BILLING_PL_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_billing_pl_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_BILLING_PL_4'
                                    is_structure              = VALUE tys_a_sales_order_billing_pl_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderBillingPlanItemType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_BILLING_PL_2' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderBillingPlanItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingPlanItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_DATE_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillingPlanDateCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_BILLING_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanBillingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'BillingPlanAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_AMOUNT_PERCEN' ).
    lo_primitive_property->set_edm_name( 'BillingPlanAmountPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROPOSED_BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ProposedBillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_DATE_DESCRIPT' ).
    lo_primitive_property->set_edm_name( 'BillingPlanDateDescriptionCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_BLOCK_REASON' ).
    lo_primitive_property->set_edm_name( 'BillingBlockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SERVICE_START' ).
    lo_primitive_property->set_edm_name( 'BillingPlanServiceStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SERVICE_END_D' ).
    lo_primitive_property->set_edm_name( 'BillingPlanServiceEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_RELATED_BILLG' ).
    lo_primitive_property->set_edm_name( 'BillingPlanRelatedBillgStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADOPTING_BILLING_DATE_ID' ).
    lo_primitive_property->set_edm_name( 'AdoptingBillingDateID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_BILLING_RULE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanBillingRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_MILESTONE_USA' ).
    lo_primitive_property->set_edm_name( 'BillingPlanMilestoneUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLG_PLN_DTE_CORRECTION_R' ).
    lo_primitive_property->set_edm_name( 'BillgPlnDteCorrectionRfndType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'AccountingExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTPONEMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PostponementReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlan' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_BILLING_PL_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_header_par_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_HEADER_PAR_2'
                                    is_structure              = VALUE tys_a_sales_order_header_par_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderHeaderPartnerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_HEADER_PARTN' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderHeaderPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'PartnerFunctionInternalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL' ).
    lo_primitive_property->set_edm_name( 'Personnel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON' ).
    lo_primitive_property->set_edm_name( 'ContactPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_ASSIGNMENT_EXTERNAL_I' ).
    lo_primitive_property->set_edm_name( 'WorkAssignmentExternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 100 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'ReferenceBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_Address' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_PARTNER_AD_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_header_pr__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_HEADER_PR__2'
                                    is_structure              = VALUE tys_a_sales_order_header_pr__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderHeaderPrElementType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_HEADER_PR_EL' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderHeaderPrElement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_STEP' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureStep' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_COUNTER' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'PricingDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_CONDITION_DETERMINAT' ).
    lo_primitive_property->set_edm_name( 'PriceConditionDeterminationDte' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ConditionCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_STATISTIC' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForStatistics' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'ConditionOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_GROUP_CONDITION' ).
    lo_primitive_property->set_edm_name( 'IsGroupCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_ROUNDING_OFF_DIFF_AMO' ).
    lo_primitive_property->set_edm_name( 'CndnRoundingOffDiffAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTROL' ).
    lo_primitive_property->set_edm_name( 'ConditionControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_INACTIVE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionInactiveReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ConditionClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_PROCEDURE_COUNTER_FOR' ).
    lo_primitive_property->set_edm_name( 'PrcgProcedureCounterForHeader' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FACTOR_FOR_CONDITION_BASIS' ).
    lo_primitive_property->set_edm_name( 'FactorForConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STRUCTURE_CONDITION' ).
    lo_primitive_property->set_edm_name( 'StructureCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERIOD_FACTOR_FOR_CNDN_BAS' ).
    lo_primitive_property->set_edm_name( 'PeriodFactorForCndnBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_VALU' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_CURR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_IS_RELEVANT_FOR_INTCO' ).
    lo_primitive_property->set_edm_name( 'CndnIsRelevantForIntcoBilling' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_MANUALLY_CHAN' ).
    lo_primitive_property->set_edm_name( 'ConditionIsManuallyChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_CONFIGURA' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForConfiguration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANT_CONDITION' ).
    lo_primitive_property->set_edm_name( 'VariantCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_billi_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_BILLI_2'
                                    is_structure              = VALUE tys_a_sales_order_item_billi_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemBillingPlanType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_BILLING' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemBillingPlan' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_IS_IN_HEADER' ).
    lo_primitive_property->set_edm_name( 'BillingPlanIsInHeader' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_START_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_START_DATE_RU' ).
    lo_primitive_property->set_edm_name( 'BillingPlanStartDateRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'ReferenceBillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillingPlanCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_END_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_END_DATE_RULE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanEndDateRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SEARCH_TERM' ).
    lo_primitive_property->set_edm_name( 'BillingPlanSearchTerm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlanItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_ORDER_ITEM_BILLING_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_partn_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_PARTN_3'
                                    is_structure              = VALUE tys_a_sales_order_item_partn_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemPartnerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_PARTNER' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'PartnerFunctionInternalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL' ).
    lo_primitive_property->set_edm_name( 'Personnel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON' ).
    lo_primitive_property->set_edm_name( 'ContactPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_ASSIGNMENT_EXTERNAL_I' ).
    lo_primitive_property->set_edm_name( 'WorkAssignmentExternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 100 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'ReferenceBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ADDRESS' ).
    lo_navigation_property->set_edm_name( 'to_Address' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_PARTN_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_partn_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_PARTN_4'
                                    is_structure              = VALUE tys_a_sales_order_item_partn_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemPartnerAddressType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_PARTN_2' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemPartnerAddress' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_1' ).
    lo_primitive_property->set_edm_name( 'OrganizationName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_2' ).
    lo_primitive_property->set_edm_name( 'OrganizationName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_3' ).
    lo_primitive_property->set_edm_name( 'OrganizationName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_4' ).
    lo_primitive_property->set_edm_name( 'OrganizationName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_PHONE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'MobilePhoneCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'MobileNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_EXTENSION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneExtensionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'FaxNumberCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_AREA_CODE_SUBSCRIBER_N' ).
    lo_primitive_property->set_edm_name( 'FaxAreaCodeSubscriberNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_EXTENSION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxExtensionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_PARTN_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_pr_el_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_PR_EL_2'
                                    is_structure              = VALUE tys_a_sales_order_item_pr_el_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemPrElementType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_PR_ELEM' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemPrElement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_STEP' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureStep' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_COUNTER' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'PricingDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_CONDITION_DETERMINAT' ).
    lo_primitive_property->set_edm_name( 'PriceConditionDeterminationDte' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_VALUE' ).
    lo_primitive_property->set_edm_name( 'ConditionRateValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ConditionCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_STATISTIC' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForStatistics' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_RELEVANT_FOR_ACCRUAL' ).
    lo_primitive_property->set_edm_name( 'IsRelevantForAccrual' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_IS_RELEVANT_FOR_INVOI' ).
    lo_primitive_property->set_edm_name( 'CndnIsRelevantForInvoiceList' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'ConditionOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_GROUP_CONDITION' ).
    lo_primitive_property->set_edm_name( 'IsGroupCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SEQUENTIAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ConditionSequentialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_ROUNDING_OFF_DIFF_AMO' ).
    lo_primitive_property->set_edm_name( 'CndnRoundingOffDiffAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTROL' ).
    lo_primitive_property->set_edm_name( 'ConditionControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_INACTIVE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionInactiveReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ConditionClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_PROCEDURE_COUNTER_FOR' ).
    lo_primitive_property->set_edm_name( 'PrcgProcedureCounterForHeader' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FACTOR_FOR_CONDITION_BASIS' ).
    lo_primitive_property->set_edm_name( 'FactorForConditionBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STRUCTURE_CONDITION' ).
    lo_primitive_property->set_edm_name( 'StructureCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERIOD_FACTOR_FOR_CNDN_BAS' ).
    lo_primitive_property->set_edm_name( 'PeriodFactorForCndnBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_VALU' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_BASIS_CURR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleBasisCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_IS_RELEVANT_FOR_INTCO' ).
    lo_primitive_property->set_edm_name( 'CndnIsRelevantForIntcoBilling' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_MANUALLY_CHAN' ).
    lo_primitive_property->set_edm_name( 'ConditionIsManuallyChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_CONFIGURA' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForConfiguration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANT_CONDITION' ).
    lo_primitive_property->set_edm_name( 'VariantCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_relat_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_RELAT_2'
                                    is_structure              = VALUE tys_a_sales_order_item_relat_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemRelatedObjectType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_RELATED' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemRelatedObject' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_SEQUE' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectSequenceNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_RELATED_OBJECT' ).
    lo_primitive_property->set_edm_name( 'SDDocumentRelatedObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_SYSTE' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_REFER' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectReference1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_REF_2' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectReference2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_text_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_TEXT_TY'
                                    is_structure              = VALUE tys_a_sales_order_item_text_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM_TEXT' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItemText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_item_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITEM_TYPE'
                                    is_structure              = VALUE tys_a_sales_order_item_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItemType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITEM' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HIGHER_LEVEL_ITEM' ).
    lo_primitive_property->set_edm_name( 'HigherLevelItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HIGHER_LEVEL_ITEM_USAGE' ).
    lo_primitive_property->set_edm_name( 'HigherLevelItemUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM_TEXT' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItemText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_BY_SHIP_TO' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderByShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDERLYING_PURCHASE_ORDER' ).
    lo_primitive_property->set_edm_name( 'UnderlyingPurchaseOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_ITEM_ID' ).
    lo_primitive_property->set_edm_name( 'ExternalItemID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'MaterialByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE' ).
    lo_primitive_property->set_edm_name( 'PricingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_REFERENCE_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'PricingReferenceMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'RequestedQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'RequestedQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'RequestedQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'RequestedQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFD_DELIV_QTY_IN_ORDER_Q' ).
    lo_primitive_property->set_edm_name( 'ConfdDelivQtyInOrderQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'ItemGrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'ItemNetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'ItemWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_WEIGHT_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ItemWeightSAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_WEIGHT_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ItemWeightISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME' ).
    lo_primitive_property->set_edm_name( 'ItemVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'ItemVolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ItemVolumeSAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ItemVolumeISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINALLY_REQUESTED_MATER' ).
    lo_primitive_property->set_edm_name( 'OriginallyRequestedMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'NetAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_SDDOC_REFERENCE_STAT' ).
    lo_primitive_property->set_edm_name( 'TotalSDDocReferenceStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_REFERENCE_STATUS' ).
    lo_primitive_property->set_edm_name( 'SDDocReferenceStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_SUBSTITUTION_REAS' ).
    lo_primitive_property->set_edm_name( 'MaterialSubstitutionReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_PRICING_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialPricingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTRACT_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'ContractAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_VALUE_DAYS' ).
    lo_primitive_property->set_edm_name( 'AdditionalValueDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICES_RENDERED_DATE' ).
    lo_primitive_property->set_edm_name( 'ServicesRenderedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH' ).
    lo_primitive_property->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_PLANT' ).
    lo_primitive_property->set_edm_name( 'ProductionPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINAL_PLANT' ).
    lo_primitive_property->set_edm_name( 'OriginalPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTV_BSD_CONF_SUBSTITUTION' ).
    lo_primitive_property->set_edm_name( 'AltvBsdConfSubstitutionStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_GROUP' ).
    lo_primitive_property->set_edm_name( 'DeliveryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_POINT' ).
    lo_primitive_property->set_edm_name( 'ShippingPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_TYPE' ).
    lo_primitive_property->set_edm_name( 'ShippingType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_PRIORITY' ).
    lo_primitive_property->set_edm_name( 'DeliveryPriority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_DATE_QUANTITY_IS' ).
    lo_primitive_property->set_edm_name( 'DeliveryDateQuantityIsFixed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_DATE_TYPE_RULE' ).
    lo_primitive_property->set_edm_name( 'DeliveryDateTypeRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_TRANSFER_LOCATIO' ).
    lo_primitive_property->set_edm_name( 'IncotermsTransferLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 28 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TaxAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_2' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_3' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_4' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_5' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_6' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_7' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_8' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_9' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_ACCOUNT_ASSIGNMENT_GR' ).
    lo_primitive_property->set_edm_name( 'MatlAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CostAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_VALUE_DATE' ).
    lo_primitive_property->set_edm_name( 'FixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_RJCN_REASON' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentRjcnReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_BILLING_BLOCK_REASON' ).
    lo_primitive_property->set_edm_name( 'ItemBillingBlockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SLS_DOC_IS_RLVT_FOR_PROOF' ).
    lo_primitive_property->set_edm_name( 'SlsDocIsRlvtForProofOfDeliv' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBSELEMENT' ).
    lo_primitive_property->set_edm_name( 'WBSElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'AccountingExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'SDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_STATUS' ).
    lo_primitive_property->set_edm_name( 'DeliveryStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_RELATED_BILLING_STAT' ).
    lo_primitive_property->set_edm_name( 'OrderRelatedBillingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_1_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal1Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_2_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal2Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_3_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal3Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_4_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal4Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_5_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal5Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_6_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal6Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlan' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_BILLI_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_PARTN_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRECEDING_PROC_FLOW_DOC' ).
    lo_navigation_property->set_edm_name( 'to_PrecedingProcFlowDocItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITM_PRECDG_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRICING_ELEMENT' ).
    lo_navigation_property->set_edm_name( 'to_PricingElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_PR_EL_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_RELATED_OBJECT' ).
    lo_navigation_property->set_edm_name( 'to_RelatedObject' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_RELAT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SCHEDULE_LINE' ).
    lo_navigation_property->set_edm_name( 'to_ScheduleLine' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_SCHEDULE_L_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUBSEQUENT_PROC_FLOW_DO' ).
    lo_navigation_property->set_edm_name( 'to_SubsequentProcFlowDocItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITM_SUBSQN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_Text' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TEXT_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_sales_order_itm_precdg_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITM_PRECDG_2'
                                    is_structure              = VALUE tys_a_sales_order_itm_precdg_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItmPrecdgProcFlowType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITM_PRECDG_P' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItmPrecdgProcFlow' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_RELATIONSHIP_UUID' ).
    lo_primitive_property->set_edm_name( 'DocRelationshipUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PrecedingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'PrecedingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_DOCUMENT_CATEGOR' ).
    lo_primitive_property->set_edm_name( 'PrecedingDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCESS_FLOW_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ProcessFlowLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATED_PROC_FLOW_DOC_STS' ).
    lo_primitive_property->set_edm_name( 'RelatedProcFlowDocStsFieldName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'SDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_TRANSFER_STATUS' ).
    lo_primitive_property->set_edm_name( 'AccountingTransferStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRELIM_BILLING_DOCUMENT_ST' ).
    lo_primitive_property->set_edm_name( 'PrelimBillingDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_itm_subsqn_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_ITM_SUBSQN_2'
                                    is_structure              = VALUE tys_a_sales_order_itm_subsqn_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderItmSubsqntProcFlowType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_ITM_SUBSQNT' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderItmSubsqntProcFlow' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_RELATIONSHIP_UUID' ).
    lo_primitive_property->set_edm_name( 'DocRelationshipUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SubsequentDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'SubsequentDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_DOCUMENT_CATEGO' ).
    lo_primitive_property->set_edm_name( 'SubsequentDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCESS_FLOW_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ProcessFlowLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELATED_PROC_FLOW_DOC_STS' ).
    lo_primitive_property->set_edm_name( 'RelatedProcFlowDocStsFieldName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'SDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_TRANSFER_STATUS' ).
    lo_primitive_property->set_edm_name( 'AccountingTransferStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRELIM_BILLING_DOCUMENT_ST' ).
    lo_primitive_property->set_edm_name( 'PrelimBillingDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSQNT_DOC_ITM_PRECDG_DOC' ).
    lo_primitive_property->set_edm_name( 'SubsqntDocItmPrecdgDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSQNT_DOC_ITM_PRECDG_D_2' ).
    lo_primitive_property->set_edm_name( 'SubsqntDocItmPrecdgDocItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSQNT_DOC_ITM_PRECDG_D_3' ).
    lo_primitive_property->set_edm_name( 'SubsqntDocItmPrecdgDocCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_partner_ad_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_PARTNER_AD_2'
                                    is_structure              = VALUE tys_a_sales_order_partner_ad_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderPartnerAddressType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_PARTNER_ADDR' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderPartnerAddress' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_1' ).
    lo_primitive_property->set_edm_name( 'OrganizationName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_2' ).
    lo_primitive_property->set_edm_name( 'OrganizationName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_3' ).
    lo_primitive_property->set_edm_name( 'OrganizationName3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_NAME_4' ).
    lo_primitive_property->set_edm_name( 'OrganizationName4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_PHONE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'MobilePhoneCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOBILE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'MobileNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'PhoneNumberCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_EXTENSION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneExtensionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'FaxNumberCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_AREA_CODE_SUBSCRIBER_N' ).
    lo_primitive_property->set_edm_name( 'FaxAreaCodeSubscriberNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_EXTENSION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxExtensionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_HEADER_PAR_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_precdg_pro_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_PRECDG_PRO_2'
                                    is_structure              = VALUE tys_a_sales_order_precdg_pro_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderPrecdgProcFlowType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_PRECDG_PROC' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderPrecdgProcFlow' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_RELATIONSHIP_UUID' ).
    lo_primitive_property->set_edm_name( 'DocRelationshipUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PrecedingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_DOCUMENT_CATEGOR' ).
    lo_primitive_property->set_edm_name( 'PrecedingDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCESS_FLOW_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ProcessFlowLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallSDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_related_ob_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_RELATED_OB_2'
                                    is_structure              = VALUE tys_a_sales_order_related_ob_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderRelatedObjectType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_RELATED_OBJE' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderRelatedObject' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_SEQUE' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectSequenceNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_RELATED_OBJECT' ).
    lo_primitive_property->set_edm_name( 'SDDocumentRelatedObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_SYSTE' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_REFER' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectReference1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_RELATED_OBJECT_REF_2' ).
    lo_primitive_property->set_edm_name( 'SDDocRelatedObjectReference2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_schedule_l_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_SCHEDULE_L_2'
                                    is_structure              = VALUE tys_a_sales_order_schedule_l_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderScheduleLineType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_SCHEDULE_LIN' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderScheduleLine' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SCHEDULE_LINE' ).
    lo_primitive_property->set_edm_name( 'ScheduleLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_DELIVERY_DATE' ).
    lo_primitive_property->set_edm_name( 'RequestedDeliveryDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFIRMED_DELIVERY_DATE' ).
    lo_primitive_property->set_edm_name( 'ConfirmedDeliveryDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'OrderQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SCHEDULE_LINE_ORDER_QUANTI' ).
    lo_primitive_property->set_edm_name( 'ScheduleLineOrderQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFD_ORDER_QTY_BY_MATL_AV' ).
    lo_primitive_property->set_edm_name( 'ConfdOrderQtyByMatlAvailCheck' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERED_QTY_IN_ORDER_QTY' ).
    lo_primitive_property->set_edm_name( 'DeliveredQtyInOrderQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPEN_CONFD_DELIV_QTY_IN_OR' ).
    lo_primitive_property->set_edm_name( 'OpenConfdDelivQtyInOrdQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRECTED_QTY_IN_ORDER_QTY' ).
    lo_primitive_property->set_edm_name( 'CorrectedQtyInOrderQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIV_BLOCK_REASON_FOR_SCH' ).
    lo_primitive_property->set_edm_name( 'DelivBlockReasonForSchedLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_sales_order_subsqnt_pr_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_SUBSQNT_PR_2'
                                    is_structure              = VALUE tys_a_sales_order_subsqnt_pr_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderSubsqntProcFlowType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_SUBSQNT_PROC' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderSubsqntProcFlow' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_RELATIONSHIP_UUID' ).
    lo_primitive_property->set_edm_name( 'DocRelationshipUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SubsequentDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBSEQUENT_DOCUMENT_CATEGO' ).
    lo_primitive_property->set_edm_name( 'SubsequentDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCESS_FLOW_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ProcessFlowLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallSDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_sales_order_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER_TEXT' ).
    lo_entity_set->set_edm_name( 'A_SalesOrderText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sales_order_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SALES_ORDER_TYPE'
                                    is_structure              = VALUE tys_a_sales_order_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SalesOrderType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SALES_ORDER' ).
    lo_entity_set->set_edm_name( 'A_SalesOrder' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_TYPE' ).
    lo_primitive_property->set_edm_name( 'SalesOrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_TYPE_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'SalesOrderTypeInternalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_DIVISION' ).
    lo_primitive_property->set_edm_name( 'OrganizationDivision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DISTRICT' ).
    lo_primitive_property->set_edm_name( 'SalesDistrict' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOLD_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'SoldToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SENDER_BUSINESS_SYSTEM_NAM' ).
    lo_primitive_property->set_edm_name( 'SenderBusinessSystemName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_DOCUMENT_ID' ).
    lo_primitive_property->set_edm_name( 'ExternalDocumentID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_DOC_LAST_CHANGE_D' ).
    lo_primitive_property->set_edm_name( 'ExternalDocLastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_BY_SHIP_TO' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderByShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PURCHASE_ORDER_TY' ).
    lo_primitive_property->set_edm_name( 'CustomerPurchaseOrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PURCHASE_ORDER_DA' ).
    lo_primitive_property->set_edm_name( 'CustomerPurchaseOrderDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_DATE' ).
    lo_primitive_property->set_edm_name( 'SalesOrderDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_NET_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TotalNetAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_DELIVERY_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallDeliveryStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_BLOCK_STATUS' ).
    lo_primitive_property->set_edm_name( 'TotalBlockStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_ORD_RELTD_BILLG_ST' ).
    lo_primitive_property->set_edm_name( 'OverallOrdReltdBillgStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDDOC_REFERENCE_ST' ).
    lo_primitive_property->set_edm_name( 'OverallSDDocReferenceStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'SDDocumentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE' ).
    lo_primitive_property->set_edm_name( 'PricingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_DETN_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'PriceDetnExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUESTED_DELIVERY_DATE' ).
    lo_primitive_property->set_edm_name( 'RequestedDeliveryDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPLETE_DELIVERY_IS_DEFIN' ).
    lo_primitive_property->set_edm_name( 'CompleteDeliveryIsDefined' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_TYPE' ).
    lo_primitive_property->set_edm_name( 'ShippingType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HEADER_BILLING_BLOCK_REASO' ).
    lo_primitive_property->set_edm_name( 'HeaderBillingBlockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_BLOCK_REASON' ).
    lo_primitive_property->set_edm_name( 'DeliveryBlockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_DATE_TYPE_RULE' ).
    lo_primitive_property->set_edm_name( 'DeliveryDateTypeRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_TRANSFER_LOCATIO' ).
    lo_primitive_property->set_edm_name( 'IncotermsTransferLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 28 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_VERSION' ).
    lo_primitive_property->set_edm_name( 'IncotermsVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PRICE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerPriceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'PriceListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_METHOD' ).
    lo_primitive_property->set_edm_name( 'PaymentMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_VALUE_DATE' ).
    lo_primitive_property->set_edm_name( 'FixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSIGNMENT_REFERENCE' ).
    lo_primitive_property->set_edm_name( 'AssignmentReference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT_CATEG' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_DOC_EXTERNAL_RE' ).
    lo_primitive_property->set_edm_name( 'AccountingDocExternalReference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_ASSIGNMEN' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'AccountingExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SLS_DOC_IS_RLVT_FOR_PROOF' ).
    lo_primitive_property->set_edm_name( 'SlsDocIsRlvtForProofOfDeliv' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICATIO' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_2' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_3' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_4' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_5' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_6' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_7' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_8' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_9' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'TaxDepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'VATRegistrationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_APPROVAL_REASO' ).
    lo_primitive_property->set_edm_name( 'SalesOrderApprovalReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOC_APPROVAL_STATUS' ).
    lo_primitive_property->set_edm_name( 'SalesDocApprovalStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallSDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_CREDIT_CHECK_STATUS' ).
    lo_primitive_property->set_edm_name( 'TotalCreditCheckStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_TOTAL_DELIVERY_STA' ).
    lo_primitive_property->set_edm_name( 'OverallTotalDeliveryStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDDOCUMENT_REJECTI' ).
    lo_primitive_property->set_edm_name( 'OverallSDDocumentRejectionSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTRACT_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'ContractAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_VALUE_DAYS' ).
    lo_primitive_property->set_edm_name( 'AdditionalValueDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PURCHASE_ORDER_SU' ).
    lo_primitive_property->set_edm_name( 'CustomerPurchaseOrderSuplmnt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICES_RENDERED_DATE' ).
    lo_primitive_property->set_edm_name( 'ServicesRenderedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlan' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_BILLING_PL_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_Item' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_HEADER_PAR_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PAYMENT_PLAN_ITEM_DETAI' ).
    lo_navigation_property->set_edm_name( 'to_PaymentPlanItemDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SLS_ORD_PAYMENT_PLAN_I_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRECEDING_PROC_FLOW_DOC' ).
    lo_navigation_property->set_edm_name( 'to_PrecedingProcFlowDoc' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_PRECDG_PRO_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRICING_ELEMENT' ).
    lo_navigation_property->set_edm_name( 'to_PricingElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_HEADER_PR__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_RELATED_OBJECT' ).
    lo_navigation_property->set_edm_name( 'to_RelatedObject' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_RELATED_OB_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SUBSEQUENT_PROC_FLOW_DO' ).
    lo_navigation_property->set_edm_name( 'to_SubsequentProcFlowDoc' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_SUBSQNT_PR_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_Text' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_sls_order_item_billing_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_ORDER_ITEM_BILLING_2'
                                    is_structure              = VALUE tys_a_sls_order_item_billing_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsOrderItemBillingPlanItemType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_ORDER_ITEM_BILLING_P' ).
    lo_entity_set->set_edm_name( 'A_SlsOrderItemBillingPlanItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingPlanItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_DATE_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillingPlanDateCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_BILLING_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanBillingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'BillingPlanAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_AMOUNT_PERCEN' ).
    lo_primitive_property->set_edm_name( 'BillingPlanAmountPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROPOSED_BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ProposedBillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_DATE_DESCRIPT' ).
    lo_primitive_property->set_edm_name( 'BillingPlanDateDescriptionCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_BLOCK_REASON' ).
    lo_primitive_property->set_edm_name( 'BillingBlockReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SERVICE_START' ).
    lo_primitive_property->set_edm_name( 'BillingPlanServiceStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_SERVICE_END_D' ).
    lo_primitive_property->set_edm_name( 'BillingPlanServiceEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_RELATED_BILLG' ).
    lo_primitive_property->set_edm_name( 'BillingPlanRelatedBillgStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADOPTING_BILLING_DATE_ID' ).
    lo_primitive_property->set_edm_name( 'AdoptingBillingDateID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_BILLING_RULE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanBillingRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_MILESTONE_USA' ).
    lo_primitive_property->set_edm_name( 'BillingPlanMilestoneUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLG_PLN_DTE_CORRECTION_R' ).
    lo_primitive_property->set_edm_name( 'BillgPlnDteCorrectionRfndType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'AccountingExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTPONEMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'PostponementReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILLING_PLAN' ).
    lo_navigation_property->set_edm_name( 'to_BillingPlan' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_BILLI_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_sls_ord_payment_plan_i_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_SLS_ORD_PAYMENT_PLAN_I_2'
                                    is_structure              = VALUE tys_a_sls_ord_payment_plan_i_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_SlsOrdPaymentPlanItemDetailsType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_SLS_ORD_PAYMENT_PLAN_ITE' ).
    lo_entity_set->set_edm_name( 'A_SlsOrdPaymentPlanItemDetails' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER' ).
    lo_primitive_property->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_PLAN_ITEM' ).
    lo_primitive_property->set_edm_name( 'PaymentPlanItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_PLAN' ).
    lo_primitive_property->set_edm_name( 'PaymentPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ELECTRONIC_PAYMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ElectronicPaymentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ELECTRONIC_PAYMENT' ).
    lo_primitive_property->set_edm_name( 'ElectronicPayment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'EPaytValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'EPaytValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ELECTRONIC_PAYMENT_HOLDER' ).
    lo_primitive_property->set_edm_name( 'ElectronicPaymentHolderName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZED_AMOUNT_IN_AUTHZ' ).
    lo_primitive_property->set_edm_name( 'AuthorizedAmountInAuthznCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'AuthorizationCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_BY_DIGITAL_P' ).
    lo_primitive_property->set_edm_name( 'AuthorizationByDigitalPaytSrvc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_BY_ACQUIRER' ).
    lo_primitive_property->set_edm_name( 'AuthorizationByAcquirer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_DATE' ).
    lo_primitive_property->set_edm_name( 'AuthorizationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_TIME' ).
    lo_primitive_property->set_edm_name( 'AuthorizationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'AuthorizationStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_BY_DIGITAL_PAYMENT_S' ).
    lo_primitive_property->set_edm_name( 'EPaytByDigitalPaymentSrvc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ELECTRONIC_PAYMENT_CALL_ST' ).
    lo_primitive_property->set_edm_name( 'ElectronicPaymentCallStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_AUTHORIZATION_RESULT' ).
    lo_primitive_property->set_edm_name( 'EPaytAuthorizationResult' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_TO_BE_AUTHORIZED_AMO' ).
    lo_primitive_property->set_edm_name( 'EPaytToBeAuthorizedAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_AUTHORIZATION_IS_EXP' ).
    lo_primitive_property->set_edm_name( 'EPaytAuthorizationIsExpired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EPAYT_AMOUNT_IS_CHANGED' ).
    lo_primitive_property->set_edm_name( 'EPaytAmountIsChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREAUTHORIZATION_IS_REQUES' ).
    lo_primitive_property->set_edm_name( 'PreauthorizationIsRequested' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_SERVICE_PROVIDER' ).
    lo_primitive_property->set_edm_name( 'PaymentServiceProvider' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_BY_PAYMENT_SERVICE' ).
    lo_primitive_property->set_edm_name( 'PaymentByPaymentServicePrvdr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_BY_PAYT_SRVC_P' ).
    lo_primitive_property->set_edm_name( 'TransactionByPaytSrvcPrvdr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MERCHANT_BY_CLEARING_HOUSE' ).
    lo_primitive_property->set_edm_name( 'MerchantByClearingHouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_CARD_AUTHZN_RELATI' ).
    lo_primitive_property->set_edm_name( 'PaymentCardAuthznRelationID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 44 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_TO_BE_AUTHORIZED_A' ).
    lo_primitive_property->set_edm_name( 'MaximumToBeAuthorizedAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYT_PLN_FOR_AUTHORIZATION' ).
    lo_primitive_property->set_edm_name( 'PaytPlnForAuthorizationItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYT_PLN_ITM_FOR_AUTHORIZA' ).
    lo_primitive_property->set_edm_name( 'PaytPlnItmForAuthorizationItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_ORDER' ).
    lo_navigation_property->set_edm_name( 'to_SalesOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_SALES_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_function_result.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'FUNCTION_RESULT'
                                    is_structure              = VALUE tys_function_result( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'FunctionResult' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'BOOLEAN' ).
    lo_primitive_property->set_edm_name( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_reject_approval_request.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'REJECT_APPROVAL_REQUEST' ).
    lo_function->set_edm_name( 'rejectApprovalRequest' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'REJECT_APPROVAL_REQUEST' ).
    lo_function_import->set_edm_name( 'rejectApprovalRequest' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'SALES_ORDER' ).
    lo_parameter->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SALES_ORDER' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'FUNCTION_RESULT' ).

  ENDMETHOD.


  METHOD def_release_approval_request.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'RELEASE_APPROVAL_REQUEST' ).
    lo_function->set_edm_name( 'releaseApprovalRequest' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_2( ) ).

    lo_function_import = lo_function->create_function_import( 'RELEASE_APPROVAL_REQUEST' ).
    lo_function_import->set_edm_name( 'releaseApprovalRequest' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'SALES_ORDER' ).
    lo_parameter->set_edm_name( 'SalesOrder' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SALES_ORDER_2' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'FUNCTION_RESULT' ).

  ENDMETHOD.
ENDCLASS.
