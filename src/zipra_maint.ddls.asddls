@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view entity maint'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZIpra_maint 
as select from zpr_maint
association [0..*] to ZI_PRA_LP as _maintype
on $projection.MaintType = _maintype.MaintType
association to parent ZI_pra_vech as _vechile
on $projection.VehicleId = _vechile.VehicleId

{
    key log_id as LogId,
    key vehicle_id as VehicleId,
    maint_date as MaintDate,
    maint_type as MaintType,
    cuky_field as CukyField,
    @Semantics.amount.currencyCode : 'cukyfield'
    cost as Cost,
    status as Status,
    _vechile,
    _maintype
    
}
