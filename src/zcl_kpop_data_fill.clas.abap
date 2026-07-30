CLASS zcl_kpop_data_fill DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS fill_kpop_data
      RAISING
        cx_uuid_error.
    METHODS flush.
ENDCLASS.



CLASS zcl_kpop_data_fill IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    me->fill_kpop_data( ).
*    me->flush(  ).
  ENDMETHOD.

  METHOD fill_kpop_data.
    DATA: lt_zkpop_comp   TYPE TABLE OF zkpop_comp,
          lt_zkpop_groups TYPE TABLE OF zkpop_groups,
          lt_zkpop_idols  TYPE TABLE OF zkpop_idols.

*    APPEND VALUE #(
*    comp_id   = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    comp_name = 'YG Entertainment'
*    ceo_name  = 'Yang Min Seok'
*    city      = 'Seoul'
*    country   = 'KR'
*    ) TO lt_zkpop_comp.
*
*    APPEND VALUE #(
*    comp_id   = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    comp_name = 'JYP Entertainment'
*    ceo_name  = 'JY Park'
*    city      = 'Seoul'
*    country   = 'KR'
*    ) TO lt_zkpop_comp.
*
*    APPEND VALUE #(
*    comp_id   = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    comp_name = 'SM Entertainment'
*    ceo_name  = 'Jang Cheol Hyuk'
*    city      = 'Seoul'
*    country   = 'KR'
*    ) TO lt_zkpop_comp.
*
*    APPEND VALUE #(
*    group_id     = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    group_name     = 'BLACKPINK'
*    debut_date     = '20160808'
*    ent_comp       = 'YG Entertainment'
*    member_count   = '0004'
*    fandom_name    = 'Blinks'
*    gender         = 'Female'
*    net_worth      = '85'
*    currency       = 'USD'
*    ) TO lt_zkpop_groups.
*
*
*    APPEND VALUE #(
*    group_id     = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    group_name     = 'Stray Kids'
*    debut_date     = '20180325'
*    ent_comp       = 'JYP Entertainment'
*    member_count   = '0008'
*    fandom_name    = 'Stay'
*    gender         = 'Male'
*    net_worth      = '40'
*    currency       = 'USD'
*    ) TO lt_zkpop_groups.
*
*    APPEND VALUE #(
*    group_id     = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    group_name     = 'ITZY'
*    debut_date     = '20190212'
*    ent_comp       = 'JYP Entertainment'
*    member_count   = '0005'
*    fandom_name    = 'Midzy'
*    gender         = 'Female'
*    net_worth      = '15'
*    currency       = 'USD'
*    ) TO lt_zkpop_groups.
*
*    APPEND VALUE #(
*    group_id     = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
*    group_name     = 'EXO'
*    debut_date     = '20120412'
*    ent_comp       = 'SM Entertainment'
*    member_count   = '0009'
*    fandom_name    = 'EXOL'
*    gender         = 'Male'
*    net_worth      = '100'
*    currency       = 'USD'
*    ) TO lt_zkpop_groups.

     APPEND VALUE #(
     idol_id    = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
     idol_name  = 'Lisa'
     idol_group = 'BLACKPINK'
     idol_dob   = '19970327'
     idol_pos   = '03'
    ) TO lt_zkpop_idols.

     APPEND VALUE #(
     idol_id    = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
     idol_name  = 'Jennie'
     idol_group = 'BLACKPINK'
     idol_dob   = '19960116'
     idol_pos   = '02'
    ) TO lt_zkpop_idols.

     APPEND VALUE #(
     idol_id    = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
     idol_name  = 'Rose'
     idol_group = 'BLACKPINK'
     idol_dob   = '19970211'
     idol_pos   = '01'
    ) TO lt_zkpop_idols.

     APPEND VALUE #(
     idol_id    = cl_uuid_factory=>create_system_uuid(  )->create_uuid_c22(  )
     idol_name  = 'Jisoo'
     idol_group = 'BLACKPINK'
     idol_dob   = '19950103'
     idol_pos   = '04'
    ) TO lt_zkpop_idols.

    INSERT zkpop_comp FROM TABLE @lt_zkpop_comp.
    INSERT zkpop_groups FROM TABLE @lt_zkpop_groups.
    INSERT zkpop_idols FROM TABLE @lt_zkpop_idols.

  ENDMETHOD.

  METHOD flush.
    DELETE FROM: zkpop_idols. "zkpop_groups, zkpop_comp.
  ENDMETHOD.

ENDCLASS.
