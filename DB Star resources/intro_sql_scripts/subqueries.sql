--Lesson 58
SELECT AVG(salary)
FROM employee;


SELECT employee_id,
first_name,
last_name,
salary
FROM employee
WHERE salary > (
	SELECT AVG(salary)
	FROM employee
);


--Lesson 59
SELECT
department_id,
department_name
FROM department;


SELECT
department_id,
department_name
FROM department
WHERE department_name IN ('Sales', 'Finance');


SELECT employee_id,
first_name,
last_name,
department_id
FROM employee
WHERE department_id IN (
	SELECT
	department_id,
	department_name
	FROM department
	WHERE department_name IN ('Sales', 'Finance')
);


SELECT employee_id,
first_name,
last_name,
department_id
FROM employee
WHERE department_id IN (
	SELECT
	department_id
	FROM department
	WHERE department_name IN ('Sales', 'Finance')
);
