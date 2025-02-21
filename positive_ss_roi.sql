SELECT *
FROM {{ ref('aggregated_movie_revenue') }}
WHERE total_revenue < 0
