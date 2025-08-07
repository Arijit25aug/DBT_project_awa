{{
    config(
        materialized='table'
    )
}}

select 
ID as cus_id,
NAME as cus_name,
EMAIL,
REGION
from {{ source('raw_source_data', 'RAW_CUSTOMERS') }}
