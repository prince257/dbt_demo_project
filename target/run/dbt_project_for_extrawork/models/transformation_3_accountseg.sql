

  create  table "demo_transformation"."target"."transformation_3_accountseg__dbt_tmp"
  as (
    select * from "demo_transformation"."target"."transformation_2_accountseg" where id_sr in ('1' , '2' , '3')
  );