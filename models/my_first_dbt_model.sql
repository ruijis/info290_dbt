
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT site, COUNT(value)
FROM metadata, data
WHERE metadata.id = data.id
GROUP BY site
ORDER BY COUNT DESC
LIMIT 1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null