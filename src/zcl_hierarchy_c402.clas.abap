CLASS zcl_hierarchy_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hierarchy_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    TRY.
        SELECT FROM HIERARCHY( SOURCE zcds_22_log_c403
                               CHILD TO PARENT ASSOCIATION _Manager
                               START WHERE Employee = '5'
                               SIBLINGS ORDER BY Employee ASCENDING )
          FIELDS Employee,
                 Manager,
                 Name

          INTO TABLE @DATA(lt_results).

      CATCH cx_sy_open_sql_db INTO DATA(lx_sql_db).
        out->write( lx_sql_db->get_text( ) ).
        RETURN.

    ENDTRY.

    CHECK lt_results IS NOT INITIAL.
    out->write( lt_results ).


  ENDMETHOD.

ENDCLASS.
