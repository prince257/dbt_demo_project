
  
    

  create  table "demo_transformation"."target"."filter_data__dbt_tmp"
  as (
    select id_sr , propno , acctype , ownerind from "demo_transformation"."target"."load_data" where ownerind = '1'
  );
  