--Lesson 51
SELECT customer_id,
first_name,
last_name,
email_address
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
INSTR(email_address, '@')
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@')
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@') > 0
AND LENGTH(address_state) = 2;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@') > 0
AND LENGTH(address_state) = 2
ORDER BY LENGTH(email_address) DESC;


--Lesson 52
SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@'), 100)
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, 100)
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, 100) AS email_domain
FROM customer;


SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address, '@'),
SUBSTR(email_address, INSTR(email_address, '@')+1, LENGTH(email_address)) AS email_domain
FROM customer;


--Lesson 53
SELECT product_id,
product_name,
price
FROM product;


SELECT product_id,
product_name,
price,
ROUND(price)
FROM product;


SELECT product_id,
product_name,
price,
ROUND(price),
ROUND(price, 1)
FROM product;


SELECT product_id,
product_name,
price,
ROUND(price),
ROUND(price, 1),
CEIL(price)
FROM product;


SELECT product_id,
product_name,
price,
ROUND(price),
ROUND(price, 1),
CEIL(price),
FLOOR(price)
FROM product;


SELECT
product_id,
product_name,
price
FROM product
WHERE product_id = 1;


SELECT
product_id,
product_name,
price,
price * 9 * 0.85
FROM product
WHERE product_id = 1;


SELECT
product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85, 2)
FROM product
WHERE product_id = 1;


SELECT
product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85, 2),
ROUND(price * 9 * 0.85)
FROM product
WHERE product_id = 1;


SELECT
product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85, 2),
CEIL(price * 9 * 0.85)
FROM product
WHERE product_id = 1;


--Lesson 54
SELECT employee_id,
first_name,
last_name,
hire_date,
SYSDATE
FROM employee;


SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) AS review_date
FROM employee;


SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) AS review_date
ADD_MONTHS(hire_date, 60) AS five_year
FROM employee;


SELECT employee_id,
first_name,
last_name,
hire_date,
MONTHS_BETWEEN(SYSDATE, hire_date) AS time_with_company
FROM employee;


SELECT employee_id,
first_name,
last_name,
hire_date,
MONTHS_BETWEEN(SYSDATE, hire_date)/12 AS time_with_company
FROM employee;


SELECT employee_id,
first_name,
last_name,
hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12, 1) AS years_with_company
FROM employee;


SELECT SYSDATE
FROM dual;


SELECT ADD_MONTHS(SYSDATE, 20)
FROM dual;


--Lesson 55
SELECT
first_name,
last_name,
hire_date
FROM employee;


SELECT
first_name,
last_name,
hire_date,
TO_CHAR(hire_date, 'YYYY_MM_DD')
FROM employee;


SELECT TO_DATE('2017_05_28', 'YYYY_MM_DD')
FROM dual;

SELECT TO_NUMBER('200')
FROM dual;





--Lesson 56
SELECT product_id,
product_name,
price
FROM product;


SELECT product_id,
product_name,
price,
CASE
WHEN price > 100 THEN 'Over 100'
WHEN price <= 100 THEN 'Less than or under 100'
END price_group
FROM product;



SELECT product_id,
product_name,
price,
CASE
WHEN price > 200 THEN 'Over 200'
WHEN price > 100 AND price <= 200 THEN 'Between 100 and 200'
WHEN price > 50 AND price <= 100 THEN 'Between 50 and 100'
ELSE 'Under 50'
END price_group
FROM product;


SELECT customer_id,
first_name,
last_name,
address_state
FROM customer;


SELECT customer_id,
first_name,
last_name,
address_state,
CASE address_state
WHEN 'NY' THEN 'East'
WHEN 'CA' THEN 'West'
WHEN 'OR' THEN 'West'
WHEN 'SC' THEN 'East'
WHEN 'TX' THEN 'West'
WHEN 'FL' THEN 'East'
WHEN 'IN' THEN 'East'
ELSE 'Unknown'
END state_group
FROM customer;


SELECT customer_id,
first_name,
last_name,
address_state,
CASE
WHEN address_state IN ('NY', 'SC', 'FL', 'IN') THEN 'East'
WHEN address_state IN ('CA', 'OR', 'TX') THEN 'West'
ELSE 'Unknown'
END state_group
FROM customer;

