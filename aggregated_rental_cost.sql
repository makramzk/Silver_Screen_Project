SELECT 
        movie_id, 
        DATE_TRUNC('month', Release_Date) AS month, 
        location_id AS location, 
        SUM(Weekly_price * 4) AS monthly_rental_cost
    FROM {{ source('Silver_Screen_Project', 'invoices_raw') }}
    GROUP BY movie_id, DATE_TRUNC('month', Release_Date), location
