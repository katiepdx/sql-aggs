-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

select city, SUM(amount) from customer

-- get the amounts for the sum
inner join rental on customer.customer_id = rental.customer_id
inner join payment on rental.rental_id = payment.rental_id

-- get the city
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id

-- get the sum by city name
group by city.city

-- get the top ten cities with the highest amt
order by sum desc
limit 10
