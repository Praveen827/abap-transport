@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view main'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_MAINT as projection on ZIpra_maint
{   
    @UI.lineItem: [{ position: 5 }]
    key LogId,
    
    @UI.lineItem: [{ position: 10 }]
    key VehicleId,
     @UI.lineItem: [{ position: 20 }]
    MaintDate,
    
    @UI.lineItem: [{ position: 30 }]
    @Consumption.valueHelpDefinition: [
      {
        entity: {
          name    : 'ZIpra_maint',
          element : 'MaintType'
        }
      }
    ]
    MaintType,
    
       @UI.lineItem: [{ position: 40 }]
    CukyField,
    
      @Semantics.amount.currencyCode : 'cukyfield'
       @UI.lineItem: [{ position: 50 }]
    Cost,
    Status,
    /* Associations */
    _maintype,
    _vechile : redirected to parent ZC_vech
}
