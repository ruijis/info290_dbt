
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT bed.class
FROM {{ref('bldg_energy_data')}} as bed
ORDER BY bed.value DESC
LIMIT 1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
