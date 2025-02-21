WITH nj_001_data AS (
    SELECT 
        movie_id, 
        DATE_TRUNC('month', timestamp) AS month, 
        'nj_001' AS location,
        SUM(ticket_amount) AS tickets_sold, 
        SUM(transaction_total) AS revenue 
    FROM {{ source('Silver_Screen_Project', 'NJ_001_raw') }}  -- Correct source reference
    GROUP BY movie_id, month, location
),

nj_002_data AS (
    SELECT 
        movie_id, 
        DATE_TRUNC('month', date) AS month, 
        'nj_002' AS location,
        SUM(ticket_amount) AS tickets_sold, 
        SUM(total_earned) AS revenue 
    FROM {{ source('Silver_Screen_Project', 'NJ_002_raw') }}
    GROUP BY movie_id, month, location
),

nj_003_data AS (
    SELECT 
        mc.movie_id, 
        DATE_TRUNC('month', n.timestamp) AS month, 
        'nj_003' AS location,
        SUM(n.amount) AS tickets_sold, 
        SUM(n.total_value) AS revenue
    FROM {{ source('Silver_Screen_Project', 'NJ_003_raw') }} n
    JOIN {{ ref('Movie_Catalogue_Clean') }} mc  
        ON LOWER(n.details) LIKE '%' || LOWER(mc.movie_title) || '%'  -- Matching movie title
    WHERE n.Product_type = 'Ticket'
    GROUP BY mc.movie_id, month, location
),

combined_ticket_sales AS (
    SELECT * FROM nj_001_data
    UNION ALL
    SELECT * FROM nj_002_data
    UNION ALL
    SELECT * FROM nj_003_data
)

SELECT 
    movie_id, 
    month, 
    location, 
    SUM(tickets_sold) AS total_tickets_sold, 
    SUM(revenue) AS total_revenue
FROM combined_ticket_sales
GROUP BY movie_id, month, location
