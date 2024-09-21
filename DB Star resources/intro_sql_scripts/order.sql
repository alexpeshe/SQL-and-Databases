--Lesson 22
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name ASC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name DESC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY salary ASC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY salary DESC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY hire_date DESC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY hire_date ASC;


--Lesson 23
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name ASC, first_name ASC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY hire_date ASC, employee_id DESC;


SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name ASC, hire_date ASC, first_name;

