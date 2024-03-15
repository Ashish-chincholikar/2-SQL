SELECT film.film_id , film.title , inventory.inventory_id , inventory.store_id
FROM film 
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;


SELECT * FROM city;

SELECT district , email FROM address
INNER JOIN customer ON 
address.address_id = customer.address_id
WHERE district = 'California';


SELECT * FROM address;


SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM actor;

SELECT * FROM actor 
INNER JOIN film_actor 
ON actor.actor_id = film_actor.actor_id
INNER JOIN film 
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND 
last_name = 'Wahlberg';




--SHOW ALL 
--SHOW TIMEZONE
--SELECT now()

--SELECT TIMEOFDAY()
SELECT CURRENT_DATE;

SELECT * FROM Payment;

SELECT EXTRACT(YEAR FROM payment_date) AS myyear
FROM payment;

SELECT EXTRACT (MONTH FROM payment_date) AS pay_month
FROM payment;

SELECT EXTRACT (QUARTER FROM payment_date) 
AS pay_month
From payment;

SELECT AGE(payment_date)
FROM payment;

SELECT TO_CHAR(payment_date , '')
FROM payment;

SELECT TO_CHAR(payment_date , 'MM/dd/yy')
FROM payment;

SELECT TO_CHAR(payment_date , 'dd/MM/yy')
FROM payment;


--DISTINCT TO_CHAR(payment_date , 'Month')
--FROM payment;

--how many payments occured on monday
--1 parameter shows for monday
SELECT COUNT(*)
FROM payment 
WHERE EXTRACT(dow FROM payment_date) = 1;

--------------------Mathematical operators------------------------------
SELECT * FROM film;

SELECT rental_rate/replacement_cost FROM film;
SELECT rental_rate+replacement_cost FROM film;


SELECT rental_rate%replacement_cost FROM film; --modulo
SELECT rental_rate^replacement_cost FROM film; --exponent 


--SELECT rental_rate|/replacement_cost FROM film; --square root 
--SELECT rental_rate||/replacement_cost FROM film; --cube root

SELECT ROUND(rental_rate/replacement_cost , 2) FROM film;

--in percentage form
SELECT ROUND(rental_rate/replacement_cost , 4)*100 FROM film;


SELECT ROUND(rental_rate/replacement_cost , 4)*100 AS percent_cost
FROM film;

SELECT 0.1 * replacement_cost AS deposit
FROM film;

---------------------------------------------------
--string functions
SELECT * FROM customer;

--length
SELECT LENGTH(first_name) FROM customer;

--concatinate
SELECT first_name || last_name FROM customer;

SELECT first_name || ' ' || last_name FROM customer;

SELECT first_name || ' ' || last_name AS full_name 
FROM customer;

SELECT Upper(first_name) || ' ' || upper(last_name) AS full_name
FROM customer;

SELECT LEFT (first_name , 1) || last_name ||'@gmail.com'
FROM customer;

SELECT RIGHT (first_name , 1) || last_name ||'@gmail.com'
FROM customer;

SELECT LOWER(LEFT(first_name , 1 )) || LOWER(last_name) || '@gmail.com'
FROM customer;

SELECT LEFT (first_name , 1) || last_name ||'@gmail.com' AS custom_email
FROM customer;

------------------------SUB-QUERY---------------------------
--we can have a subquery that works of different tables


SELECT * FROM film;

SELECT AVG(rental_rate) FROM film;

SELECT title,rental_rate
FROM film 
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)

--rental table and inventory table
SELECT * FROM rental;

SELECT * FROM inventory;

SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'

(SELECT inventory.inventory_id
FROM rental 
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')


(SELECT inventory.film_id
FROM rental 
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')


SELECT film_id , title
FROM film
WHERE film_id IN 
(SELECT inventory.film_id
FROM rental 
INNER JOIN inventory 
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')


















