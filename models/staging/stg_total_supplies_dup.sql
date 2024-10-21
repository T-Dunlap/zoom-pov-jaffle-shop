with

source as (

    select * from {{ref("stg_supplies")}}

)
select * from source