CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees(
 employee_id INT,
full_name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(20),
gender VARCHAR(10),
hire_date DATE,
salary DECIMAL(10,2),
department VARCHAR(30)
);
CREATE TABLE departments(
department_id INT,
department_name VARCHAR(50),
location VARCHAR(50)
);
CREATE TABLE projects(
project_id INT,
project_name VARCHAR(50),
start_date DATE,
end_date DATE,
budget DECIMAL(12,2)
);
ALTER TABLE employees Add status VARCHAR(20);
ALTER TABLE employees Modify department VARCHAR(50);
ALTER TABLE project Rename column budget to project_budget;
CREATE TABLE temp_employees(
id INT,
name VARCHAR(50)
);
TRUNCATE TABLE temp_employees;
DROP TABLE temp_employees;
INSERT INTO employees
VALUES
INSERT INTO employees
VALUES
(1,'akshy','akshy@gmail.com','1111222233','Male','2012-02-12',50000.00,'Sales','Active'),
(2,'manu','manu@gmail.com','4567832567','Female','2023-04-01',60000.00,'HR','Active'),
(3,'satish','satish@gmail.com','9876543212','Male','2020-07-22',70000.00,'DATA ANALYST','Active'),
(4,'sakhu','sakhu@gmail.com','9123456789','Female','2022-03-30',80000.00,'DATA SCIENTIST','active'),
(5,'niks','niks@gmail.com','9877776654','Female','2024-01-17',750000.00,'IT','Active'),
(6,'manish','manish@gmail.com','78768765433','Male','2016-05-04',85000.00,'IT','Active');
SELECT * FROM employee;
INSERT INTO Departments
VALUES
(1,'IT','pune'),
(2,'HR','mumbai'),
(3,'DATA ANALYST','remote'),
(4,'DATA SCIENTIST','nashik');
INSERT INTO projects
VALUES
(1,'Data analyser','2022-01-22','2023-12-30',100000.00),
(2,'Human Resoures','2023-01-02','2024-12-31',2000000.00),
(3,'IT','2020-10-22','2021-11-20',300000.00),
(4,'Marketing','2022-01-22','2023-12-30',400000.00),
(5,'Software Developer','2017-02-23','2019-12-09',500000.00);
UPDATE employees
SET status = 'Active';
UPDATE employees
SET salary = salary + 10000
WHERE employee_id = 1;
DELETE FROM employees
WHERE employee_id = 1;
DELETE FROM projects;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT full_name,email,salary
FROM employees;
SELECT department_name,location
FROM departments;
SELECT * FROM employees
WHERE gender = 'Female';
SELECT * FROM employees
WHERE salary = 50000.00;
SELECT * FROM employees
WHERE hire_date = 2021-01-01;
SELECT * FROM employees
WHERE department = 'IT'
AND status = 'Active';
SELECT * FROM projects
WHERE project_budget = 1000000.00
AND end_date = '2024-12-31';
UPDATE employees
SET status = 'Inactive'
WHERE salary = 30000.00;
DELETE FROM departments
WHERE location = 'Remote';
SELECT * FROM projects;





 
