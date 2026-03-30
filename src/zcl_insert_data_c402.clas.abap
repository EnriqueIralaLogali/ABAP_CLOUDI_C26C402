CLASS zcl_insert_data_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    MODIFY zemployee_c402 FROM TABLE @( VALUE #( ( employee_id = 1
*                                                   employee_first_name = 'Juan'
*                                                   employee_last_name  = 'Lopez'
*                                                   employee_address_id = 1
*                                                   employee_age        = '34'
*                                                   employee_role       = 'Developer' )
*                                                   ( employee_id = 2
*                                                   employee_first_name = 'Laura'
*                                                   employee_last_name  = 'Perez'
*                                                   employee_address_id = 1
*                                                   employee_age        = '20'
*                                                   employee_role       = 'Accountant' )
*                                                   ( employee_id = 3
*                                                   employee_first_name = 'Gabriel'
*                                                   employee_last_name  = 'Lopez'
*                                                   employee_address_id = 1
*                                                   employee_age        = '30'
*                                                   employee_role       = 'Developer' )
*                                                   ( employee_id = 4
*                                                   employee_first_name = 'Teresa'
*                                                   employee_last_name  = 'Martinez'
*                                                   employee_address_id = 1
*                                                   employee_age        = '35'
*                                                   employee_role       = 'Manager' ) ) ).

    DO 100000 TIMES.

      MODIFY zemployee_c402 FROM TABLE @( VALUE #( (  employee_id = sy-index
                                                      employee_first_name = 'Juan'
                                                      employee_last_name  = 'Lopez'
                                                      employee_address_id = 1
                                                      employee_age        = '34'
                                                      employee_role       = 'DEV'
                                                      employee_salary     = '1000'
                                                      employee_currency   = 'EUR' ) ) ).

    ENDDO.




  ENDMETHOD.

ENDCLASS.
