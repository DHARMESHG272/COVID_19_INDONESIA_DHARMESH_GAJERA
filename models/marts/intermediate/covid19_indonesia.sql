with covid19_indonesia as (

    select  Date,
            location_iso_code as location_code,
            New_Cases as Cases,
            New_Deaths as Deaths,
            New_Recovered as Recovered,
            New_Active_Cases as Active_Cases,
            Total_Cases,
            Total_Deaths,
            Total_Recovered,
            Total_Active_Cases,
            New_Cases_per_Million as Cases_per_Million,
            Total_Cases_per_Million,
            New_Deaths_per_Million as Deaths_per_Million,
            Total_Deaths_per_Million,
            Case_Fatality_Rate,
            Case_Recovered_Rate,
            Growth_Factor_of_New_Cases as Growth_Factor_of_Cases,
            Growth_Factor_of_New_Deaths as Growth_Factor_of_Deaths
    from fivetran_interview_db.google_sheets.covid_19_indonesia_dharmesh_gajera

)

select * from covid19_indonesia