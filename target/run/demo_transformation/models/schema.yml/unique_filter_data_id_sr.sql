select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "demo_transformation"."target_dbt_test__audit"."unique_filter_data_id_sr"
    
      
    ) dbt_internal_test