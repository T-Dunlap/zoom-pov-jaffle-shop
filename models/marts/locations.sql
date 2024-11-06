with

locations as (

    select 
        location_id
        ,case when location_name = 'Philadelphia' then 'Philly' else location_name end as location_name
        ,tax_rate
        ,'test' as new_column
    
    from {{ ref('stg_locations') }}

)

select * from locations
