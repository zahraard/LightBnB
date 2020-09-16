SELECT properties.*, avg(rating) as average_rating
FROM properties 
JOIN property_reviews ON property_id = properties.id
WHERE city LIKE '%ancouver%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
