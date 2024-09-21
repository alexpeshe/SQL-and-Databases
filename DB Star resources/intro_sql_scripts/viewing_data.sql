/* Viewing Data */

--Lesson 8
SELECT *
FROM employee;


SELECT *
FROM department;

--Lesson 9
SELECT employee_id, first_name, last_name
FROM employee;


SELECT employee_id, last_name, department_id
FROM employee;


SELECT employee_id, department_id, last_name
FROM employee;


SELECT department_id, department_name
FROM department;

--Lesson 10
SELECT employee_id, first_name, last_name
FROM employee
WHERE first_name = 'Jessica';


SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name = 'Smith';


SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name = 'Jones';


SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name <> 'Jones';

--Lesson 11
SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id > 5;


SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id >= 5;


SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id < 8;


SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id <= 8;

--Lesson 12
SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name LIKE 'Bu%";


SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name LIKE '%e%";


SELECT employee_id, first_name, last_name
FROM employee
WHERE first_name LIKE 'Ann_";


--Lesson 13
SELECT *
FROM employee
WHERE hire_date = '03-OCT-2010';


SELECT value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT';


SELECT *
FROM employee
WHERE hire_date < '01-OCT-2010';


SELECT *
FROM employee
WHERE hire_date > '23-JAN-2012';


SELECT *
FROM employee
WHERE hire_date >= '23-JAN-2012';


--Lesson 14
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' AND last_name = 'Hayes';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' OR last_name = 'Hayes';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' OR last_name = 'Foster';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Justin' AND last_name = 'Little';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Justin' OR last_name = 'Little';


--Lesson 15
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014';


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
AND salary < 70000;


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
OR salary < 70000;


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara'
AND (hire_date < '01-DEC-2014'
OR salary < 70000);


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE (first_name = 'Barbara'
AND hire_date < '01-DEC-2014')
OR salary < 70000;


--Lesson 16
SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE employee_id > 50;


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NULL;


SELECT employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NOT NULL;


--Lesson 17
SELECT last_name
FROM employee;


SELECT first_name, last_name
FROM employee;


SELECT DISTINCT last_name
FROM employee;


SELECT last_name, department_id
FROM employee;


SELECT DISTINCT last_name, department_id
FROM employee;
