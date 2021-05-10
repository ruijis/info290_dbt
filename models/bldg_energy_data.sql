
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT data.*, bem.class 
FROM {{ref('bldg_energy_metadata')}} as bem, {{ref('bldg_energy_classes')}} as bec, data
WHERE bem.class = bec.rawname and bem.id = data.id

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
