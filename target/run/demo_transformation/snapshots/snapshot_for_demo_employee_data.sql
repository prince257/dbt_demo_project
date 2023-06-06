
      update "demo_transformation"."snapshots"."snapshot_for_demo_employee_data"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "snapshot_for_demo_employee_data__dbt_tmp075047930141" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "demo_transformation"."snapshots"."snapshot_for_demo_employee_data".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "demo_transformation"."snapshots"."snapshot_for_demo_employee_data".dbt_valid_to is null;

    insert into "demo_transformation"."snapshots"."snapshot_for_demo_employee_data" ("customer_id", "first_name", "last_name", "email", "salary", "department", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."customer_id",DBT_INTERNAL_SOURCE."first_name",DBT_INTERNAL_SOURCE."last_name",DBT_INTERNAL_SOURCE."email",DBT_INTERNAL_SOURCE."salary",DBT_INTERNAL_SOURCE."department",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "snapshot_for_demo_employee_data__dbt_tmp075047930141" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  