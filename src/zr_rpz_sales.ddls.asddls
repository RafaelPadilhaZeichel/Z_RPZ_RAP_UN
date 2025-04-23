@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Basic'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_RPZ_SALES
  as select from ztrpz_sales_un
{
  key orderid  as Orderid,
      customer as Customer,
      vendor   as Vendor,
      company  as Company
}
