CLASS zcl_aman DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_aman IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  OUT->write(
    EXPORTING
      data   = 'This is my first SAP BTP Program'
*      name   =
*    RECEIVING
*      output =
  ).

  ENDMETHOD.

ENDCLASS.
