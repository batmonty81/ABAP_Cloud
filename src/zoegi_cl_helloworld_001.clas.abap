CLASS zoegi_cl_helloworld_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zoegi_cl_helloworld_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'Hello World in ABAP Cloud' ).

  ENDMETHOD.
ENDCLASS.
