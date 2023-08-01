select *,
1 as dummy
from {{ ref('my_second_dbt_model') }}