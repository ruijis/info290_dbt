
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT bec.energy_consumption_kwh / bre.bldg_asf as EUI_kWh_sf
FROM {{ref('bldg_energy_consumption')}} as bec, {{ref('bldg_real_estate')}} as bre

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
