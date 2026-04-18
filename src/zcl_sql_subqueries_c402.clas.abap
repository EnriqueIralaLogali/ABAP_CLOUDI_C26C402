CLASS zcl_sql_subqueries_c402 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sql_subqueries_c402 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " AS
*    SELECT FROM /dmo/flight
*    FIELDS carrier_id AS Airline,
*           connection_id AS Connection
*    GROUP BY carrier_id, connection_id
*    INTO TABLE @DATA(lt_flights).
*
*    IF sy-subrc = 0.
*      out->write( lt_flights ).
*    ENDIF.

    " Subquery
*    SELECT FROM /DMO/I_Flight
*    FIELDS *
*    WHERE price EQ ( SELECT FROM /DMO/I_Flight
*                     FIELDS MIN( price ) )
*    INTO TABLE @DATA(lt_lowcost).
*
*    IF sy-subrc = 0.
*      out->write( lt_lowcost ).
*    ENDIF.

*    SELECT FROM /DMO/I_Flight
*    FIELDS *
*    WHERE airlineid IN ( SELECT FROM /DMO/I_Connection
*                         FIELDS AirlineID
*                         WHERE DepartureAirport EQ 'JFK' )
*      AND CurrencyCode = 'USD'
*    INTO TABLE @DATA(lt_flights).
*
*    IF sy-subrc = 0.
*      out->write( lt_flights ).
*    ENDIF.

    " ANY/SOME
*    SELECT FROM /DMO/I_Connection AS Connection
*    FIELDS *
*    WHERE AirlineID EQ SOME ( SELECT FROM /DMO/I_Flight
*                              FIELDS AirlineID
*                              WHERE OccupiedSeats GE 100 )
*    INTO TABLE @DATA(lt_flights).
*
*    IF sy-subrc = 0.
*      out->write( lt_flights ).
*    ENDIF.

    " Exists
    SELECT FROM /DMO/I_Flight AS Flights
    FIELDS *
    WHERE OccupiedSeats LT flights~MaximumSeats
    AND EXISTS ( SELECT FROM zcarrier_lgl_402
                 FIELDS carrier_id
                 WHERE carrier_id = flights~AirlineID ) " = 'XX' )
    INTO TABLE @DATA(lt_flights).

    IF sy-subrc = 0.
      out->write( lt_flights ).
    ELSE.
      out->write( 'No data' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
