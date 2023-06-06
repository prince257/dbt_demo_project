select id_sr , count (distinct acctype) as total_unique_acctype from "demo_transformation"."target"."filter_data"
group by id_sr