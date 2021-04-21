-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country,
       AVG(amount)
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
INNER JOIN customer ON payment.customer_id = customer.customer_id
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
GROUP BY country
ORDER BY AVG DESC
LIMIT 10
