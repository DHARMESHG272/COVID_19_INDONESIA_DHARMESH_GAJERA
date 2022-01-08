with death_rates as (

    select *
    from {{ ref('int_death_rates') }}

),

regions_with_highest_death_rates as (

  select death_rates.death_rates,
         death_rates.location_code,
         death_rates.location

  from death_rates
  order by death_rates desc

)

select *
from regions_with_highest_death_rates



