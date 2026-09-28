WITH source_data AS (
    SELECT *
    FROM {{ source('northwind', 'customers') }}
)
SELECT
    customerid AS customer_id
    ,companyname AS company_name
    ,contactname AS contact_name
    ,contacttitle AS contact_title
    ,address
    ,city
    ,region
    ,postalcode AS postal_code
    ,country
FROM source_data

--just adding