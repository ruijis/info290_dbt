
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


SELECT max(bed.value) - min(bed.value) as energy_consumption_kWh
FROM {{ref('bldg_energy_data')}} as bed, {{ref('bldg_energy_data_sum_class')}} as bedsc
WHERE bed.class = bedsc.class and bed.time >= '2018-06-10' and bed.time < '2018-06-11'

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
