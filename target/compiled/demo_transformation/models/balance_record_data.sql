select id_sr,
sum(case when blnc_flg = 'high' then current_balance else 0 end) as total_high_amount,
sum(case when blnc_flg = 'low' then current_balance else 0 end) as total_low_amount,
sum(case when blnc_flg = 'medium' then current_balance else 0 end) as total_medium_amount,

sum(current_balance) as total_amount

from "demo_transformation"."target"."transformed_data"
group by id_sr