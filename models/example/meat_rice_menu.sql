select 
    m.id,
    m.meat_name,
    r.rice_name as rice_name,
from {{ ref('meat') }} m
join
 {{ ref('rice') }} r
ON m.id = r.id