

  create  table "demo_transformation"."target"."transformation_2_accountseg__dbt_tmp"
  as (
    select id_sr , propno , acctype , ownerind from "demo_transformation"."target"."transformation_1_accountseg" where ownerind = '1'
  );