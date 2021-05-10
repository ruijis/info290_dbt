
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


SELECT rem.*
FROM {{ref('my_second_dbt_model')}} as bs
INNER JOIN real_estate_metadata rem ON bs.building = rem.building_name

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
