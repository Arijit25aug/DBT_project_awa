{{
    config(
        materialized='view',secure=true
    )
}}

select 
* 
from {{ source('raw_source_data', 'RAW_PAYMENTS') }}

