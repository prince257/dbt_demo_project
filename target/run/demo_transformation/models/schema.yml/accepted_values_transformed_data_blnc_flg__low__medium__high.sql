select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        blnc_flg as value_field,
        count(*) as n_records

    from "demo_transformation"."target"."transformed_data"
    group by blnc_flg

)

select *
from all_values
where value_field not in (
    'low','medium','high'
)



      
    ) dbt_internal_test