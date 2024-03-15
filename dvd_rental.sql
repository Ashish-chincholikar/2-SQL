SELECT * FROM customer;

SELECT customer_id,
CASE
	WHEN (customer_id <=100) THEN 'premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END
FROM customer;
	
	
---

SELECT customer_id , 
CASE customer_id
	WHEN 2 THEN 'winner'
	WHEN 5 THEN 'second place'
	ELSE 'normal'
	
	
SELECT * from film;
	
SELECT rental_rate FROM film;
	
	
SELECT 
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END
FROM film
	
SELECT 
SUM (CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_of_bargains
FROM film
	

	
SELECT 
SUM (CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular ,
SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END )AS premium
FROM film

--7th september
SELECT * FROM address;

SELECT first_name , last_name , address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;
	
--we create a view for thoughs command that we find executing more times
--and later call that view
CREATE VIEW customer_info AS
SELECT first_name , last_name , address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;


SELECT * FROM customer_info;

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name , address , district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

SELECT * FROM customer_info;

-- to drop a view
--DROP VIEW IF EXISTS customer_info;

--ALTER VIEW
ALTER VIEW customer_info RENAME TO c_info;

SELECT * FROM customer_info;--gives error as the handler of the view is renamed
SELECT * FROM c_info;

DROP VIEW c_info;

--Imorting and Exporting Data


























































	
	
	
	
	
	
	
	
	
	
	
	
END AS raffle_results
FROM customer