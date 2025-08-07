{{
    config(
        materialized='table'
    )
}}

select 
* 
from {{ source('raw_source_data', 'RAW_ORDERS') }}
