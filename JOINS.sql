select * FROM film;
--31/08 AS clause , JOINS

SELECT * FROM payment 
INNER JOIN customer 
on payment.customer_id = customer.customer_id;

SELECT payment.payment_id , payment.customer_id , customer.first_name 
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.payment_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null ;

SELECT film.film_id , title, inventory_id , store_id
FROM film 
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id;








































