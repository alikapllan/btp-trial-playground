@EndUserText.label: 'Abstract Entity for Action to create a sales order'
define abstract entity Z_I_SALES_ORDER_CREATE_ACT

{
  SalesOrderType       : abap.char(4);
  SalesOrganization    : abap.char(4);
  DistributionChannel  : abap.char(2);
  OrganizationDivision : abap.char(2);
  SalesGroup           : abap.char(3);
  SalesOffice          : abap.char(4);
  SalesDistrict        : abap.char(6);
  SoldToParty          : abap.char(10);
//  CreationDate         : abap.dats;
//  CreatedByUser        : abap.char(12);
//  PurchaseOrderByCustomer : abap.char(35);
  RequestedDeliveryDate : abap.dats;
  // Item details
  Material                : abap.char(40);
  @Semantics.quantity.unitOfMeasure: 'RequestedQuantityUnit'
  RequestedQuantity       : abap.quan(15,3);
  RequestedQuantityUnit   : abap.unit(3);
}
