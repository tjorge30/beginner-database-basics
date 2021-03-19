-- Table - person:
--#1
-- CREATE TABLE person (
-- id SERIAL PRIMARY KEY,
-- name VARCHAR (250) UNIQUE NOT NULL,
-- age INT NOT NULL,
-- height INT NOT NULL,
-- city VARCHAR (50) NOT NULL,
-- favorite_color VARCHAR (20) NOT NULL
-- );

--#2
-- INSERT INTO 
--  person (name, age, height, city, favorite_color)
-- VALUES
-- ('Barney Stinson', 28, 65, 'New York City', 'awesome'),
-- ('Ted Mosby', 28, 65, 'New York City', 'blue'),
-- ('Robin Scherbatsky', 27, 62, 'New York City', 'red'),
-- ('Lily Aldrin', 27, 60, 'New York City', 'purple'),
-- ('Marshall Eriksen', 28, 72, 'New York City', 'green');

--#3
-- SELECT *
-- FROM person
-- ORDER BY 
-- height DESC;

--#4
-- SELECT *
-- FROM person
-- ORDER BY 
-- height ASC;

--#5
-- SELECT *
-- FROM person
-- ORDER BY 
-- age DESC;

--#6
-- SELECT *
-- FROM person
-- WHERE age > 20
-- ORDER BY age ASC;

--#7
-- SELECT *
-- FROM person
-- WHERE age = 18
-- ORDER BY name ASC;

--#8
-- SELECT *
-- FROM person
-- WHERE age < 20 OR age > 30
-- ORDER BY name ASC;

--#9
-- SELECT * 
-- FROM person 
-- WHERE age != 27
-- ORDER BY age ASC;

--#10
-- SELECT * 
-- FROM person 
-- WHERE favorite_color != 'red'
-- ORDER BY favorite_color ASC;

--#11
-- SELECT * 
-- FROM person 
-- WHERE favorite_color != 'red' AND favorite_color != 'blue'
-- ORDER BY favorite_color DESC;

--#12
-- SELECT * 
-- FROM person 
-- WHERE favorite_color = 'orange' OR favorite_color = 'green'
-- ORDER BY favorite_color ASC;

--#13
-- SELECT * 
-- FROM person 
-- WHERE favorite_color IN ( 'orange', 'green', 'blue' )
-- ORDER BY favorite_color ASC;

--#14
-- SELECT * 
-- FROM person 
-- WHERE favorite_color IN ( 'yellow', 'purple' )
-- ORDER BY favorite_color DESC;




--Table - orders:

--#1
-- CREATE TABLE orders (
-- order_id SERIAL PRIMARY KEY,
-- person_id INT,
-- product_name VARCHAR (50),
-- product_price NUMERIC,
-- quantity INT
-- );


--#2
-- INSERT INTO 
-- orders ( person_id, product_name, product_price, quantity ) 
-- VALUES 
-- ( 1, 'sunscreen', 8.00, 1),
-- ( 1, 'beach ball', 5.50, 2 ),
-- ( 2, 'tent', 129.50, 1 ),
-- ( 2, 'sleeping bag', 75.00, 2 ),
-- ( 2, 'camping chair', 25.00, 2 );

--#3
-- SELECT * 
-- FROM orders;


--#4
-- SELECT SUM (quantity)
-- FROM orders;

--#5
-- SELECT SUM(product_price * quantity) 
-- FROM orders;

--#6
-- SELECT SUM(product_price * quantity) 
-- FROM orders 
-- WHERE person_id = 2;




-- Table - artist:

--#1
-- INSERT INTO 
-- artist (name)
-- VALUES
-- ('Duran Duran'),
-- ('Foreigner'),
-- ('David Bowie');

--#2
-- SELECT *
-- FROM artist
-- ORDER BY name DESC
-- LIMIT 10;

--#3
-- SELECT *
-- FROM artist
-- ORDER BY name ASC
-- LIMIT 5;

--#4
-- SELECT *
-- FROM artist
-- WHERE name ILIKE 'Black%';

--#5
-- SELECT *
-- FROM artist
-- WHERE name LIKE '%Black%';




--Table - employee:

--#1
-- SELECT first_name, last_name
-- FROM employee
-- WHERE city = 'Calgary';

--#2
-- SELECT MAX(birth_date)
-- FROM employee;

--#3
-- SELECT MIN(birth_date)
-- FROM employee;

--#4
-- SELECT employee_id
-- FROM employee
-- WHERE first_name = 'Nancy' AND last_name = 'Edwards';
--returns 2

-- SELECT first_name, last_name, title
-- FROM employee
-- WHERE reports_to = 2;


--#5
-- SELECT COUNT(*)
-- FROM employee
-- WHERE city = 'Lethbridge';


--Table - invoice:

--#1
-- SELECT COUNT(*)
-- FROM invoice
-- WHERE billing_country = 'USA';

--#2
-- SELECT MAX(total)
-- FROM invoice;

--#3
-- SELECT MIN(total)
-- FROM invoice;

--#4
-- SELECT *
-- FROM invoice
-- WHERE total < 5;

--#5
-- SELECT COUNT(*)
-- FROM invoice
-- WHERE total > 5;

--#6
-- SELECT COUNT(*)
-- FROM invoice
-- WHERE billing_state IN ('CA', 'TX', 'AZ');

--#7
-- SELECT AVG(total)
-- FROM invoice;

--#8
-- SELECT SUM(total)
-- FROM invoice;