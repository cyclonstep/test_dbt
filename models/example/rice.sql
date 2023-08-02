
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

with source_data as (

    select 1 as id,
    'white_rice' as rice_name
    union all
    select 2 as id,
    'brown_rice' as rice_name
    union all
    select 3 as id,
    'fried_rice' as rice_name

)

select *
from source_data