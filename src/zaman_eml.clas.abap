CLASS zaman_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaman_eml IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: it_data_delete TYPE TABLE FOR DELETE zaman_m_travel.
    it_data_delete = VALUE #( (
        travel_id   = '00009998'
        ) ).

    MODIFY ENTITIES OF zaman_m_travel
    ENTITY Travel
    DELETE FROM it_data_delete
    FAILED DATA(lt_data_failed)
    REPORTED DATA(lt_reported).

    IF lt_data_failed IS NOT INITIAL.
      out->write(
      EXPORTING data = lt_data_failed ).
    ENDIF.
    COMMIT ENTITIES.

  ENDMETHOD.
ENDCLASS.
