CLASS zpra_clop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpra_clop IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA it_type TYPE TABLE OF zpr_loop.
  it_type = VALUE #(
  ( maint_type = 'Oil Change' )
  ( maint_type = 'Tire Rotation' )
  ( maint_type = 'Engine Service' )
  ( maint_type = 'Brake Check' )
).

INSERT zpr_loop FROM TABLE @it_type.

out->write( |data inserted | ).
  ENDMETHOD.
ENDCLASS.
