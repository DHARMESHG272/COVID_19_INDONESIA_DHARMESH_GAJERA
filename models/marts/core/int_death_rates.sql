with covid19_indonesia as (

    select *
    from {{ ref('covid19_indonesia') }}

),

locations as (

    select *
    from {{ ref('locations') }}
),

death_rates as (

    select round(sum(covid19_indonesia.Total_Deaths)/sum(covid19_indonesia.Total_Cases) * 100,2) as death_rates,
         locations.location_code,
         locations.location

  from covid19_indonesia
  left join locations on covid19_indonesia.location_code=locations.location_code
  group by locations.location_code, locations.location

)

select * from death_rates