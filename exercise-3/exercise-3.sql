-- the average rental amount by country
-- include the country name and avg amount
SELECT
	country,
	AVG(amount)
FROM
	customer
INNER JOIN address
ON address.address_id = customer.address_id
INNER JOIN city
ON city.city_id = address.city_id
INNER JOIN country
ON country.country_id = city.country_id
INNER JOIN rental
ON rental.customer_id = customer.customer_id
INNER JOIN payment
ON payment.rental_id = rental.rental_id
GROUP BY country
ORDER by avg DESC
LIMIT 10
