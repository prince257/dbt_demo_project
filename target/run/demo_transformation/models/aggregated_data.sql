
  create view "demo_transformation"."target"."aggregated_data__dbt_tmp" as (
    select id_sr , count (distinct acctype) as total_unique_acctype from "demo_transformation"."target"."filter_data"
group by id_sr
  );