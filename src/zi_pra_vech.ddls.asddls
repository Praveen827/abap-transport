@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view entity vech'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_pra_vech as select from zpr_vechi
composition [0..*] of ZIpra_maint  as _maintanence
{
    key vehicle_id as VehicleId,
    vin as Vin,
    model_name as ModelName,
    last_service_date as LastServiceDate,
    cuky_field as CukyField,
      @Semantics.amount.currencyCode : 'cukyfield' 
    toal_cost as ToalCost,
    _maintanence
}
