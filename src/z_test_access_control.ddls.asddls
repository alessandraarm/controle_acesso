@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Testando Access Control'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_TEST_ACCESS_CONTROL
  with parameters
    teste : abap.char(1)
  as select from /dmo/travel_m
{
  key travel_id,
      agency_id,
      customer_id,
      @Semantics.amount.currencyCode: 'currency_code'
      total_price,
      currency_code,
      $parameters.teste as parametro
}
