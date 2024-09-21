--Lesson 60

INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES (300, 'John', 'Smith', 3);


SELECT *
FROM employee
WHERE employee_id = 300;


INSERT INTO employee (employee_id, first_name, last_name, department_id, salary, manager_id, hire_date)
VALUES (301, 'Marge', 'Abbott', 2, 31000, 51, '04-JAN-2017');


SELECT *
FROM employee
WHERE employee_id = 301;


INSERT INTO employee
VALUES (302, 'Matt', 'Johnson', 1, 82000, 14, '10-JAN-2017');


INSERT ALL
INTO employee (employee_id, first_name, last_name, department_id) VALUES (303, 'Mark', 'Spencer', 4)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (304, 'Simone', 'Fletcher', 3)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (305, 'Alison', 'Smith', 8);


INSERT ALL
INTO employee (employee_id, first_name, last_name, department_id) VALUES (303, 'Mark', 'Spencer', 4)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (304, 'Simone', 'Fletcher', 3)
INTO employee (employee_id, first_name, last_name, department_id) VALUES (305, 'Alison', 'Smith', 8)
SELECT * FROM dual;


SELECT *
FROM employee
WHERE employee_id IN (303, 304, 305);


--Lesson 61
SELECT *
FROM customer
WHERE address_state IN ('NY', 'OR');


SELECT first_name, last_name
FROM customer
WHERE address_state IN ('NY', 'OR');


INSERT INTO employee (first_name, last_name)
SELECT first_name, last_name
FROM customer
WHERE address_state IN ('NY', 'OR');


SELECT first_name, last_name
FROM customer
WHERE customer_id = 1;


SELECT 250, first_name, last_name
FROM customer
WHERE customer_id = 1;


INSERT INTO employee (employee_id, first_name, last_name)
SELECT 250, first_name, last_name
FROM customer
WHERE customer_id = 1;


SELECT *
FROM employee
WHERE employee_id = 250;


--Lesson 62
SELECT *
FROM employee
WHERE employee_id = 85;


UPDATE employee
SET salary = salary + 10000
WHERE employee_id = 85;


SELECT *
FROM employee
WHERE employee_id = 85;


UPDATE employee
SET salary = 80000
WHERE employee_id = 85;


SELECT *
FROM employee
WHERE employee_id = 85;


SELECT *
FROM employee
WHERE employee_id IN (102, 59, 16);


UPDATE employee
SET manager_id = 30,
salary = salary + 5000
WHERE employee_id IN (102, 59, 16);


SELECT *
FROM employee
WHERE employee_id IN (102, 59, 16);


--Lesson 63
SELECT *
FROM employee;


SELECT *
FROM employee
WHERE employee_id = 250;


DELETE FROM employee
WHERE employee_id = 250;


SELECT *
FROM employee
WHERE employee_id = 250;


SELECT *
FROM employee
WHERE last_name = 'Larson';


DELETE FROM employee
WHERE last_name = 'Larson';


SELECT *
FROM employee
WHERE last_name = 'Larson';


--Lesson 64
INSERT INTO product (product_id, product_name, price, department_id)
VALUES (12, 'Large Table', 220.50, 2);


SELECT *
FROM product;


COMMIT;


INSERT INTO product (product_id, product_name, price, department_id)
VALUES (15, 'Red Chair', 52, 6);


SELECT *
FROM product;


ROLLBACK;


SELECT *
FROM product;


--Lesson 65
SELECT *
FROM customer_order;


TRUNCATE TABLE customer_order;


SELECT *
FROM customer_order;


ROLLBACK;


SELECT *
FROM customer_order;


