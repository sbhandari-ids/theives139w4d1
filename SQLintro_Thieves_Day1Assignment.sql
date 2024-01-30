
-- WEEK 5 - MONDAY QUESTIONS
-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(actor_id) 
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(payment_id) 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Answer: 5602

-- 3. What film does the store have the most of? (search in inventory)

SELECT COUNT(inventory_id), film_id 
FROM inventory 
GROUP BY film_id 
ORDER BY COUNT DESC;

-- 4. How many customers have the last name ‘William’?

SELECT COUNT(customer_id) 
FROM customer
WHERE last_name = 'William';

-- Answer: 0

-- There is a customer with last_name 'Williams', and one with last_name 'Williamson' but no customer has their last_name 'William'

-- 5. What store employee (get the id) sold the most rentals?


SELECT COUNT(rental_id), staff_id 
FROM rental 
GROUP BY staff_id

-- staff_id 1 sold the most rentals and the number is 8040

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT district) 
FROM address;

-- Answer : 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)


SELECT  COUNT(actor_id),film_id
FROM film_actor 
GROUP BY film_id 
ORDER BY 1 DESC
LIMIT 1;

-- Answer: film_id 508 with 15 actors in it.

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(customer_id) AS total_customers
FROM customer
WHERE last_name LIKE '%es' AND store_id = '1';

-- Answer: 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use GROUP BY and HAVING > 250)

SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- Answer: 3 payment amounts have the rentals above 250.


SELECT COUNT(DISTINCT rating)
FROM film;

-- Answer: 5

SELECT COUNT(film_id) AS total_films, rating
FROM film
GROUP BY rating
ORDER BY total_films DESC
LIMIT 1;

-- Answer : PG-13. Total of 223 films have PG-13 rating. 
