
      insert into "demo_transformation"."target"."transformed_data" ("id_sr", "propno", "opened_date", "closed_date", "requestid", "email_id", "current_balance", "blnc_flg")
    (
        select "id_sr", "propno", "opened_date", "closed_date", "requestid", "email_id", "current_balance", "blnc_flg"
        from "transformed_data__dbt_tmp161939282303"
    )


  