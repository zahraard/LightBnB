SELECT city, count(property_id) as total_reservation from reservations
JOIN properties ON properties.id = property_id
GROUP BY city
ORDER BY total_reservation DESC;