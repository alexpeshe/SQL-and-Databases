--Lesson 30
SELECT COUNT(*)
FROM employee;


SELECT *
FROM employee;


SELECT COUNT(1)
FROM employee;


SELECT COUNT(*)
FROM department;


SELECT COUNT(*)
FROM customer;


SELECT COUNT(*)
FROM customer_order;


--Lesson 31
SELECT *
FROM employee;


SELECT *
FROM employee
WHERE first_name = 'Barbara';


SELECT COUNT(*)
FROM employee
WHERE first_name = 'Barbara';


SELECT COUNT(salary)
FROM employee;


SELECT *
FROM employee
WHERE salary IS NULL;


SELECT *
FROM employee
WHERE salary IS NOT NULL;


SELECT DISTINCT last_name
FROM employee;


SELECT COUNT(DISTINCT last_name)
FROM employee;


SELECT DISTINCT COUNT(last_name)
FROM employee;


--Lesson 32
SELECT last_name, COUNT(*)
FROM employee;


SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name;


SELECT *
FROM product;


SELECT department_id, COUNT(*)
FROM product
GROUP BY department_id;


--Lesson 33
SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name;


SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name;


SELECT salary, COUNT(*)
FROM employee
WHERE salary > 100000
GROUP BY salary;


SELECT last_name, COUNT(*)
FROM employee
WHERE last_name LIKE 'B%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;


SELECT salary, COUNT(*)
FROM employee
WHERE salary > 100000
GROUP BY salary
ORDER BY COUNT(*) DESC;


--Lesson 34
SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id;


SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY last_name;


SELECT last_name, department_id, COUNT(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY COUNT(*) DESC;



SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name;


SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY first_name, last_name;


SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;


SELECT first_name, last_name, department_id, COUNT(*)
FROM employee
GROUP BY first_name, last_name, department_id
ORDER BY COUNT(*) DESC;


--Lesson 35
SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name;


SELECT last_name, COUNT(*)
FROM employee
WHERE COUNT(*) > 1
GROUP BY last_name;


SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name
HAVING COUNT(*) > 1;


SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;


--Lesson 36
SELECT SUM(salary)
FROM employee;


SELECT *
FROM customer_order;


SELECT *
FROM product;


SELECT SUM(price)
FROM product;


SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id;


SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id
ORDER BY SUM(salary) DESC;


--Lesson 37
SELECT MAX(salary)
FROM employee;


SELECT MIN(salary)
FROM employee;


SELECT MAX(salary), MIN(salary)
FROM employee;


SELECT department_id, MAX(salary)
FROM employee
GROUP BY department_id;


SELECT department_id, MIN(salary)
FROM employee
GROUP BY department_id;


SELECT MIN(hire_date)
FROM employee;


SELECT MAX(hire_date)
FROM employee;


SELECT MIN(last_name)
FROM employee;


SELECT MAX(last_name)
FROM employee;


--Lesson 38
SELECT AVG(salary)
FROM employee;


SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id;


SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id
ORDER BY AVG(salary);


SELECT AVG(hire_date)
FROM employee;


--Lesson 39










