CLASS zcl_exec_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    MODIFY zdatasource_1 FROM TABLE @( VALUE #( ( id = '01'
                                                    name1 = 'value1'
                                                    datasource1 = 'Source1' )
                                                 ( id = '02'
                                                    name1 = 'value2'
                                                    datasource1 = 'Source1' )
                                                 ( id = '03'
                                                    name1 = 'value3'
                                                    datasource1 = 'Source1' )
                                                 ( id = '04'
                                                    name1 = 'value4'
                                                    datasource1 = 'Source1' )
                                                 ( id = '05'
                                                    name1 = 'value5'
                                                    datasource1 = 'Source1' )
                                                  ( id = '06'
                                                    name1 = 'value6'
                                                    datasource1 = 'Source1' ) ) ).

   MODIFY zdatasource_2 FROM TABLE @( VALUE #( ( id = '07'
                                                    name2 = 'value7'
                                                    datasource2 = 'Source2' )
                                                 ( id = '08'
                                                    name2 = 'value8'
                                                    datasource2 = 'Source2' )
                                                 ( id = '03'
                                                    name2 = 'value3'
                                                    datasource2 = 'Source2' )
                                                 ( id = '04'
                                                    name2 = 'value4'
                                                    datasource2 = 'Source2' )
                                                 ( id = '09'
                                                    name2 = 'value9'
                                                    datasource2 = 'Source2' )
                                                  ( id = '10'
                                                    name2 = 'value10'
                                                    datasource2 = 'Source2' ) ) ).

  ENDMETHOD.

ENDCLASS.
