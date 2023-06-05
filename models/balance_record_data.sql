{{ config(materialized = 'table',
    
   post_hook=[
      "delete from {{ this }} where total_amount<=0"
    ]) }}


{%- set unq_blnc_flag = get_distinct_blnc_flg() -%}

select id_sr,

{%- for each_flg in unq_blnc_flag %}
sum(case when blnc_flg = '{{each_flg}}' then current_balance else 0 end) as total_{{each_flg}}_amount
{%- if not loop.last %},{% endif -%}
{% endfor %},

sum(current_balance) as total_amount

from {{ ref('transformed_data') }}
group by id_sr
