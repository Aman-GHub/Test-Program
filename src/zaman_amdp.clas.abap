CLASS zaman_amdp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    INTERFACES if_oo_adt_classrun.

    TYPES: tt_zkpop_comp TYPE TABLE OF zkpop_comp.

    METHODS get_data AMDP OPTIONS READ-ONLY
      CDS SESSION CLIENT DEPENDENT
      EXPORTING VALUE(et_data) TYPE tt_zkpop_comp.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zaman_amdp IMPLEMENTATION.

  METHOD get_data BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING zkpop_comp.

    et_data = select * from zkpop_comp;

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    TYPES: tt_zkpop_comp TYPE TABLE OF zkpop_comp.

    DATA: lt_zkpop_comp TYPE tt_zkpop_comp.

    me->get_data(
    IMPORTING
    et_data = lt_zkpop_comp
     ).

    out->write(
    EXPORTING
    data = lt_zkpop_comp
    ).

  ENDMETHOD.

ENDCLASS.
