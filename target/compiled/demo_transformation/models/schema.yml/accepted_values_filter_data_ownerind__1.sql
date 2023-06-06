
    
    

with all_values as (

    select
        ownerind as value_field,
        count(*) as n_records

    from "demo_transformation"."target"."filter_data"
    group by ownerind

)

select *
from all_values
where value_field not in (
    '1'
)


