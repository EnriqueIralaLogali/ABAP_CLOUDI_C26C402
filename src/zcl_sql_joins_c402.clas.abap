CLASS zcl_sql_joins_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sql_joins_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " Inner join
    SELECT FROM zdatasource_1 AS ds1
      INNER JOIN zdatasource_2 AS ds2
         ON ds1~id EQ ds2~id
     FIELDS ds1~id AS id1,
            ds2~id AS id2,
            ds1~name1,
            ds2~name2,
            ds1~datasource1,
            ds2~datasource2
       INTO TABLE @DATA(lt_results).

    out->write( lt_results ).

    " Lef outer join
*    SELECT FROM zdatasource_1 AS ds1
*      LEFT OUTER JOIN zdatasource_2 AS ds2
*         ON ds1~id EQ ds2~id
*     FIELDS ds1~id AS id1,
*            ds2~id AS id2,
*            ds1~name1,
*            ds2~name2,
*            ds1~datasource1,
*            ds2~datasource2
*       INTO TABLE @DATA(lt_results).
*
*    out->write( lt_results ).

    " Right outer join
*    SELECT FROM zdatasource_1 AS ds1
*      RIGHT OUTER JOIN zdatasource_2 AS ds2
*         ON ds1~id EQ ds2~id
*     FIELDS ds1~id AS id1,
*            ds2~id AS id2,
*            ds1~name1,
*            ds2~name2,
*            ds1~datasource1,
*            ds2~datasource2
*       INTO TABLE @DATA(lt_results).
*
*    out->write( lt_results ).

    " Left / Right Excluding
*    SELECT FROM zdatasource_1 AS ds1
*    FIELDS *
*    WHERE ds1~id NOT IN ( SELECT FROM zdatasource_2 AS ds2
*                          FIELDS id
*                          WHERE ds1~id = ds2~id )
*    INTO TABLE @DATA(lt_ex_left).
*
*    out->write( lt_ex_left ).
*
*    SELECT FROM zdatasource_2 AS ds2
*    FIELDS *
*    WHERE ds2~id NOT IN ( SELECT FROM zdatasource_1 AS ds1
*                          FIELDS id
*                          WHERE ds1~id = ds2~id )
*    INTO TABLE @DATA(lt_ex_right).
*
*    out->write( lt_ex_right ).

*    " Cross join
*    SELECT FROM zdatasource_1 AS ds1
*      cross JOIN zdatasource_2 AS ds2
*      cross JOIN zdatasource_3 AS ds3
*     FIELDS *
*       INTO TABLE @DATA(lt_results).
*
*     out->write( lt_results ).
*

  ENDMETHOD.

ENDCLASS.
