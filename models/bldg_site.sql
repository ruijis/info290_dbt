
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}



SELECT buildings_site_mapping.*
FROM buildings_site_mapping, {{ref('bldg')}} as b
WHERE buildings_site_mapping.site = b.site

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
