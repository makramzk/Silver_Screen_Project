{{config(materialized = 'table')}}

SELECT * FROM {{source('Silver_Screen_Project','Movie_Catalogue_raw')}}
WHERE genre IS NOT NULL 
OR rating IS NOT NULL 
OR minutes IS NOT NULL
