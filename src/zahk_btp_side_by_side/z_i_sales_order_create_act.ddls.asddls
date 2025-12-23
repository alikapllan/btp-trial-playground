@EndUserText.label: 'Abstract Entity for Action to create a sales order'
define root abstract entity Z_I_SALES_ORDER_CREATE_ACT

{
      @EndUserText.label: 'Sales Order Type'
  key SalesOrderType       : abap.char(4);

      @EndUserText.label: 'Sales Organization'
      SalesOrganization    : abap.char(4);

      @EndUserText.label: 'Distribution Channel'
      DistributionChannel  : abap.char(2);

      @EndUserText.label: 'Organization Division'
      OrganizationDivision : abap.char(2);

      @EndUserText.label: 'Sales Group'
      SalesGroup           : abap.char(3);

      @EndUserText.label: 'Sales Office'
      SalesOffice          : abap.char(4);

      @EndUserText.label: 'Sales District'
      SalesDistrict        : abap.char(6);

      @EndUserText.label: 'Sold-To Party'
      SoldToParty          : abap.char(10);

//  CreationDate         : abap.dats;
//  CreatedByUser        : abap.char(12);
//  PurchaseOrderByCustomer : abap.char(35);

      @EndUserText.label: 'Requested Delivery Date'
      RequestedDeliveryDate : abap.dats;

      // Item details
      @EndUserText.label: 'Material'
      Material                : abap.char(40);

      @EndUserText.label: 'Requested Quantity'
      @Semantics.quantity.unitOfMeasure: 'RequestedQuantityUnit'
      RequestedQuantity       : abap.quan(15,3);

      @EndUserText.label: 'Requested Quantity Unit'
      RequestedQuantityUnit   : abap.unit(3);
}
