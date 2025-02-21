SELECT
    amv.movie_id, 
    mcc.movie_title, 
    mcc.genre, 
    mcc.studio, 
    arc.month, 
    arc.location, 
    COALESCE(arc.monthly_rental_cost, 0) AS rental_cost, 
    COALESCE(amv.total_tickets_sold, 0) AS tickets_sold, 
    COALESCE(amv.total_revenue, 0) AS revenue
FROM {{ref("aggregated_movie_revenue")}} AS amv  
LEFT JOIN {{ref("aggregated_rental_cost")}} arc  
    ON arc.movie_id = amv.movie_id 
JOIN {{ ref('Movie_Catalogue_Clean') }} mcc  
    ON arc.movie_id = mcc.movie_id
