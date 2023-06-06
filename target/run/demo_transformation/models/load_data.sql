
  
    

  create  table "demo_transformation"."target"."load_data__dbt_tmp"
  as (
    select * from "demo_transformation"."public"."tbl_trn_cibil_accountseg"
  );
  