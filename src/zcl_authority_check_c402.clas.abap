CLASS zcl_authority_check_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_authority_check_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_country_code TYPE land1 VALUE 'ES'.

    AUTHORITY-CHECK OBJECT '/DMO/TRVL'
    ID '/DMO/COUNTRY' FIELD lv_country_code
    ID 'ACTVT' FIELD '01'.

*    AUTHORITY-CHECK OBJECT 'ZAOCARR402'
*    ID 'ZAFCARR402' FIELD 'AA'
*    ID 'ACTVT' FIELD '01'.

    IF sy-subrc = 0.
      out->write( |You have access to create the country { lv_country_code }| ).

    ELSE.
      out->write( |You do not have access to create the country { lv_country_code }| ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.
