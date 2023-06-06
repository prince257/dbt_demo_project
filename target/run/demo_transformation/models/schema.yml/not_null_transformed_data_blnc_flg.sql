select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select blnc_flg
from "demo_transformation"."target"."transformed_data"
where blnc_flg is null



      
    ) dbt_internal_test