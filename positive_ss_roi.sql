SELECT movie_id, month, location, COUNT(*)
FROM {{ ref('aggregated_rental_cost') }}
GROUP BY movie_id, month, location
HAVING COUNT(*) > 1
