

  create  table "demo_transformation"."target"."transformation_1_accountseg__dbt_tmp"
  as (
    select * from "demo_transformation"."public"."tbl_trn_cibil_accountseg"
  );