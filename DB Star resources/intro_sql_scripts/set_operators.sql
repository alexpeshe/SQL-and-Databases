--Lesson 24
SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;


SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer;


SELECT 'Employee', first_name, last_name
FROM employee
ORDER BY last_name
UNION
SELECT 'Customer', first_name, last_name
FROM customer;


SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer
ORDER BY last_name;


SELECT 'Employee', first_name, last_name
FROM employee
UNION
SELECT 'Customer', first_name, last_name
FROM customer
ORDER BY 1, 2;


--Lesson 25
SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;

SELECT first_name, last_name
FROM employee
UNION ALL
SELECT first_name, last_name
FROM customer;


--Lesson 26
SELECT first_name, last_name
FROM employee;


SELECT first_name, last_name
FROM customer;


SELECT first_name, last_name
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;


--Lesson 27
SELECT first_name, last_name
FROM employee;


SELECT first_name, last_name
FROM customer;


SELECT first_name, last_name
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;


--Lesson 28
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000;


SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000;


SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000;


SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 25000 AND 28000;


SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;


SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
(SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
UNION
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000)
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;



