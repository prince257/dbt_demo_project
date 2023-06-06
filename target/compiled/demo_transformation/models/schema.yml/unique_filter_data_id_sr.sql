
    
    

select
    id_sr as unique_field,
    count(*) as n_records

from "demo_transformation"."target"."filter_data"
where id_sr is not null
group by id_sr
having count(*) > 1


