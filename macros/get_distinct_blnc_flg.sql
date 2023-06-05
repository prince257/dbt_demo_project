{% macro get_distinct_blnc_flg() %}


{% set distinct_blnc_flg_query %}

select distinct
blnc_flg
from {{ ref('transformed_data') }}
order by 1

{% endset %}

{% set results = run_query(distinct_blnc_flg_query) %}

{% if execute %}

{% set results_list = results.columns[0].values() %}

{% else %}

{% set results_list = [] %}

{% endif %}

{{ return(results_list) }}

{% endmacro %}

