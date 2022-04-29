SELECT *  from film WHERE release_year < 1990;
SELECT COUNT(*) FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'Matthew' AND last_name = 'Johansson');
SELECT name from category WHERE category_id IN (SELECT DISTINCT category_id FROM film_category WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'Matthew' AND last_name = 'Johansson')));
