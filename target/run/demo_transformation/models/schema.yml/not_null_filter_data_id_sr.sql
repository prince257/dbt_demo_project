select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id_sr
from "demo_transformation"."target"."filter_data"
where id_sr is null



      
    ) dbt_internal_test