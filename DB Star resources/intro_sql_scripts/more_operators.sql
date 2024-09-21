/* More Operators */

--Lesson 18
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name = 'Foster'
OR last_name = 'Elliott'
OR last_name = 'Mitchell'
OR last_name = 'Perry'
OR last_name = 'Lawson';


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson')


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson', 'Jones')


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name NOT IN ('Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson', 'Jones')


--Lesson 19
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE hire_date >= '01-JAN-2016'
AND hire_date <= '31-DEC-2016';


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE employee_id BETWEEN 10 AND 20;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE hire_date NOT BETWEEN '01-JAN-2016' AND '31-DEC-2016';


--Lesson 20
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > 30000
AND salary > 40000
AND salary > 50000;


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > ALL (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary >= ALL (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary < ALL (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary <= ALL (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary <> ALL (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary = ALL (30000, 40000, 50000);


--Lesson 21
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > 30000
OR salary > 40000
OR salary > 50000;


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > ANY (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary >= ANY (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary < ANY (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary <= ANY (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary != ANY (30000, 40000, 50000);


SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary = ANY (30000, 40000, 50000);






