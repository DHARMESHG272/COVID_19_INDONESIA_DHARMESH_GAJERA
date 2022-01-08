with locations as (

    select location_iso_code as location_code,
           location,
           location_level,
           province,
           country,
           continent,
           time_zone,
           total_regencies,
           total_cities,
           total_districts,
           total_urban_villages,
           total_rural_villages,
           area_km_2_ as area_km2,
           population,
           population_density,
           longitude,
           latitude
    from fivetran_interview_db.google_sheets.covid_19_indonesia_dharmesh_gajera
    group by location_iso_code, location, location_level, province, country, continent, time_zone,
             total_regencies, total_cities, total_districts, total_urban_villages, total_rural_villages,
             area_km_2_, population, population_density, longitude, latitude
)

select * from locations