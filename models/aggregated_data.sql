select id_sr , count (distinct acctype) as total_unique_acctype from {{ ref('filter_data') }}
group by id_sr