@EndUserText.label: 'Custom entity for Sales Orders'

@Metadata.allowExtensions: true

@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_SALES_ORDER_AHK'
define root custom entity ZCE_SALES_ORDER_AHK

{
      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZCE_VH_SALES_ORDER_AHK', element: 'SalesOrder' } } ]
  key SalesOrder           : abap.char(10);

      SalesOrderType       : abap.char(4);
      SalesOrganization    : abap.char(4);
      DistributionChannel  : abap.char(2);
      OrganizationDivision : abap.char(2);
      SalesGroup           : abap.char(3);
      SalesOffice          : abap.char(4);
      SalesDistrict        : abap.char(6);
      SoldToParty          : abap.char(10);
      CreationDate         : abap.dats; // timestampl;
      CreatedByUser        : abap.char(12);
      PurchaseOrderByCustomer : abap.char(35);
      RequestedDeliveryDate : abap.dats;

      _Items               : composition of exact one to many ZCE_SALES_ORDER_ITEM_AHK;
}
