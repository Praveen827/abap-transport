@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view for third table'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PRA_LP as select from zpr_loop
{
    key maint_type as MaintType
}
