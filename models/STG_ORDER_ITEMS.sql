{{
    config(
        materialized='view'
    )
}}

select 
* 
from {{ source('raw_source_data', 'RAW_ORDER_ITEMS') }}
