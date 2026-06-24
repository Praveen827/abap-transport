CLASS zpra_cls DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpra_cls IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA : it_vech TYPE TABLE  of zpr_vechi,
         it_maint type table of zpr_maint.

*       it_vech = VALUE #(
*  ( vehicle_id = '001'
*    vin = '0000001'
*    model_name = 'HONDA-ELEVATE'
*    last_service_date = '20260603'
*    toal_cost    = '10000' )
*
*     ( vehicle_id = '002'
*    vin = '0000002'
*    model_name = 'AUDI'
*    last_service_date = '20260615'
*    toal_cost    = '15000' )
*).
*insert zpr_vechi   from table  @it_vech.


  it_maint = VALUE #(
  ( log_id     = '01'
    vehicle_id = '001'
    maint_date = '20260603'
    maint_type = 'brake inspection'
    cuky_field = 'INR'
    cost       = '10000'
    status     = 'completed' )

     ( log_id     = '02'
    vehicle_id = '002'
    maint_date = '20260610'
   maint_type = 'oil change'
    cuky_field = 'INR'
    cost       = '15000'
    status     = 'bending' )

    ( log_id     = '03'
    vehicle_id = '002'
    maint_date = '20260610'
    maint_type = 'trie rotation'
    cuky_field = 'INR'
    cost       = '15000'
    status     = 'compeleted' )
).

  insert zpr_maint  from table  @it_maint.


  out->write( 'data insert sucessfully' ).

  ENDMETHOD.
ENDCLASS.
