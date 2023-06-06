


with v_load_data as (

select distinct id_sr ,
propno,
ownerind,
dt_opened,
dt_closed,
current_bal,
frateogint,
ncashlimit,
nemiamount,
requestid
from "demo_transformation"."public"."tbl_trn_cibil_accountseg"

),


v_filter_data as (

select distinct id_sr, 
propno,
ownerind,
dt_opened,
dt_closed,
current_bal,
frateogint,
ncashlimit,
nemiamount

from v_load_data vld
where vld.ownerind = '1'
),


v_email_seg as (


select distinct id_sr ,
propno,
semail,
requestid
from "demo_transformation"."public"."tbl_trn_cibil_emailseg"

)




select ld.id_sr ,
ld.propno as propno ,
ld.dt_opened as opened_date,
ld.dt_closed as closed_date,
ld.requestid,
es.semail as email_id,
ld.current_bal::int as current_balance,

(CASE WHEN ld.current_bal::int < 1000 THEN  'low'
when ld.current_bal::int >= 1000 and ld.current_bal::int < 2000 THEN 'medium'
when ld.current_bal::int >=2000 then 'high'
else 'high'
end) blnc_flg

from v_load_data ld
inner  join v_filter_data fd
on ld.id_sr = fd.id_sr
and ld.propno = fd.propno
left join v_email_seg es
on  ld.id_sr = es.id_sr
where ld.dt_closed is not null




and ld.dt_opened > (select max(opened_date) from "demo_transformation"."target"."transformed_data")  

