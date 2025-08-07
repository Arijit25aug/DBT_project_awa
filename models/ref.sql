{{
    config(
        materialized='table',transient=false
    )
}}


with 
    cus as (select * from {{ ref('STG_CUSTOMERS') }}),
    ord as (select * from {{ref('STG_ORDERS')}})

select
    c.*,
    o.*
from cus c join ord o
on c.cus_id=o.CUSTOMER_ID
