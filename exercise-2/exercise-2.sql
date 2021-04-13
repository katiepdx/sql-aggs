-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
SELECT
	city,
	SUM(amount)
FROM
	customer
INNER JOIN address
ON address.address_id = customer.address_id
INNER JOIN city
ON city.city_id = address.city_id
INNER JOIN rental
ON rental.customer_id = customer.customer_id
INNER JOIN payment
ON payment.rental_id = rental.rental_id
GROUP BY city
ORDER by sum DESC
LIMIT 10
