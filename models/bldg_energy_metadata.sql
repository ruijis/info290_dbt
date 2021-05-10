
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


SELECT bm.* 
FROM {{ref('bldg_metadata')}} as bm
WHERE bm.units in ('kwh', 'Kwh', 'kWh', 'kwH', 'KWh', 'KwH', 'kWH', 'KWH', 'kw', 'Kw', 'kW', 'KW')


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
