--Lesson 39
SELECT employee_id, first_name, last_name
FROM employee;


SELECT employee_id, first_name, last_name
FROM employee e;


SELECT employee_id, first_name, last_name, e.salary
FROM employee e;


SELECT employee_id, first_name, last_name, e.salary
FROM employee e
WHERE e.salary < 30000;


--Lesson 40
SELECT employee_id, first_name, last_name,
e.salary AS annual_salary
FROM employee e;


SELECT employee_id, first_name, last_name,
e.salary AS "Annual Salary"
FROM employee e;


SELECT employee_id, first_name, last_name,
e.salary AS "Annual Salary", e.salary/12
FROM employee e;


SELECT employee_id, first_name, last_name,
e.salary AS annual_salary, e.salary/12 AS monthly_salary
FROM employee e;


SELECT department_id, COUNT(*)
FROM employee
GROUP BY department_id
ORDER BY department_id;


SELECT department_id, COUNT(*) AS num_of_employees
FROM employee
GROUP BY department_id
ORDER BY department_id;


SELECT department_id, COUNT(*) AS emplyoee_count
FROM employee
GROUP BY department_id
ORDER BY department_id;


--Lesson 41
SELECT employee_id, first_name, last_name, department_id
FROM employee;


SELECT employee_id,
first_name,
last_name,
department_id
FROM employee;


SELECT department_id,
department_name
FROM department;


SELECT employee_id,
first_name,
last_name,
department_name
FROM employee
JOIN department ON employee.department_id = department.department_id;


SELECT employee_id,
first_name,
last_name,
department_name,
department_id
FROM employee
JOIN department ON employee.department_id = department.department_id;


SELECT employee_id,
first_name,
last_name,
department_name,
department.department_id
FROM employee
JOIN department ON employee.department_id = department.department_id;


SELECT e.employee_id,
e.first_name,
e.last_name,
d.department_name,
d.department_id
FROM employee e
JOIN department d ON e.department_id = d.department_id;


SELECT e.employee_id,
e.first_name,
e.last_name,
d.department_name,
d.department_id
FROM employee e
JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 60000;


SELECT e.employee_id,
e.first_name,
e.last_name,
d.department_name,
d.department_id,
e.salary
FROM employee e
JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 60000;


--Lesson 43
SELECT
c.customer_id,
c.first_name,
c.last_name,
co.order_date
FROM customer c
INNER JOIN customer_order co ON c.customer_id = co.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
co.order_date
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id;


SELECT department_id,
department_name
FROM department;


SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;

SELECT *
FROM employee
WHERE department_id = 9;


--Lesson 44
SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM employee e
LEFT JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;


SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;


--Lesson 45
SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
FULL JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id, e.employee_id;


--Lesson 46
SELECT 
e.employee_id,
e.first_name,
e.last_name,
d.department_name,
d.department_id
FROM employee e
NATURAL JOIN department d;


SELECT 
e.employee_id,
e.first_name,
e.last_name,
department_id,
d.department_name
FROM employee e
NATURAL JOIN department d;


SELECT product_id,
product_name,
department_id,
department_name
FROM product
NATURAL JOIN department;


--Lesson 47
SELECT employee_id, first_name, last_name
FROM employee;


SELECT department_id, department_name
FROM department;


SELECT employee_id, first_name, last_name,
department_name
FROM employee, department;


SELECT employee_id, first_name, last_name,
department_name
FROM employee
CROSS JOIN department;


--Lesson 48
SELECT employee_id,
first_name,
last_name,
manager_id
FROM employee;


SELECT emp.employee_id,
emp.first_name,
emp.last_name,
emp.manager_id,
mgr.first_name,
mgr.last_name
FROM employee emp
LEFT JOIN employee mgr ON emp.manager_id = mgr.employee_id;


--Lesson 49
SELECT
customer_id,
first_name,
last_name,
address_state
FROM customer c;

SELECT order_id,
customer_id,
order_id,
order_date
FROM customer_order;


SELECT *
FROM product;


SELECT
customer_id,
first_name,
last_name,
address_state
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
ORDER BY c.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
ORDER BY co.order_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
ORDER BY c.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
ORDER BY c.customer_id;


SELECT
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price,
d.department_name
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
ORDER BY c.customer_id;


--Lesson 50
SELECT employee_id,
first_name,
last_name,
department_name
FROM employee, department
WHERE employee.department_id = department_id.department_id;


SELECT employee_id,
first_name,
last_name,
department_name
FROM employee, department
WHERE employee.department_id = department_id.department_id(+);


SELECT employee_id,
first_name,
last_name,
department_name
FROM employee, department
WHERE employee.department_id(+) = department_id.department_id;


SELECT employee_id,
first_name,
last_name,
department_name,
salary,
hire_date
FROM employee, department
WHERE salary > 50000
AND hire_date > '01-JAN-2012'
AND employee.department_id = department_id.department_id;


SELECT employee_id,
first_name,
last_name,
department_name,
salary,
hire_date
FROM employee, department
WHERE salary > 50000
AND hire_date > '01-JAN-2012';