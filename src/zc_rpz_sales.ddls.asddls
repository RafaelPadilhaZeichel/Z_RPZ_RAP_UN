@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales consuption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZC_RPZ_SALES
  as projection on ZI_RPZ_SALES
{
  key Orderid,
      Customer,
      Vendor,
      Company
}
