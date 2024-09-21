--Lesson 66
CREATE TABLE job_role (
job_role_id NUMBER(10),
role_name VARCHAR2(50),
role_create_date DATE
);

SELECT *
FROM job_role;


--Lesson 67
ALTER TABLE job_role
ADD job_description VARCHAR2(200);


SELECT *
FROM job_role;


ALTER TABLE job_role
DROP COLUMN job_description;


ALTER TABLE job_role
RENAME COLUMN role_name TO job_title;


SELECT *
FROM job_role;


ALTER TABLE job_role
RENAME TO job_title;


SELECT *
FROM job_title;


--Lesson 68
DROP TABLE job_title;

SELECT *
FROM job_title;
