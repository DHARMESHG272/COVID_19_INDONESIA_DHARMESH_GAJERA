with locations as (

    select Location_ISO_Code as Location_code,
           Location,
           Location_Level,
           Province,
           Country,
           Continent,
           time_zone
    from fivetran_interview_db.google_sheets.covid_19_indonesia_dharmesh_gajera
    group by Location_ISO_Code, Location, Location_Level, Province, Country, Continent, time_zone
)

select * from locations