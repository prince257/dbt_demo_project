select id_sr , propno , acctype , ownerind from {{ ref('load_data') }} where ownerind = '1'
