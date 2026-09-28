{{ config(materialized='view') }}
    
    WITH flights_one_month AS (
        SELECT * 
        FROM {{source('flights_data', 'flights')}}
        WHERE DATE_PART('month', flight_date) = 1 
    )
    SELECT * FROM flights_one_month

    -- DATE_PART extract the specific part of the date, here we want to get the rows only for january.
    