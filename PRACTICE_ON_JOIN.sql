CREATE DATABASE EXCELR;
USE EXCELR;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    manager_id INT
);


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);



-- Insert data into employees table
INSERT INTO employees (employee_id, name, department_id, manager_id) VALUES
(1, 'Alice', 101, NULL),
(2, 'Bob', 102, 1),
(3, 'Charlie', 101, 1),
(4, 'David', 103, 2),
(5, 'Eve', NULL, NULL);

-- Insert data into departments table
INSERT INTO departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT');


SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

/* Retrieve a list of all employees along with their department names */
 SELECT NAME,DEPARTMENT_NAME
 FROM  EMPLOYEES INNER JOIN  DEPARTMENTS
 ON EMPLOYEES. DEPARTMENT_ID = DEPARTMENTS. DEPARTMENT_ID;
 
/* Get a list of all employees, including those who don’t belong to any department */
SELECT EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.NAME AS EMPLOYEE_NAME,
DEPARTMENTS.DEPARTMENT_NAME 
FROM EMPLOYEES LEFT JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

/*Find all employees and their managers' names*/
SELECT E1.NAME, M1.NAME
FROM EMPLOYEES E1 JOIN EMPLOYEES M1
ON E1.MANAGER_ID = M1.EMPLOYEE_ID;

/* Retrieve the names of employees who work in the "Finance" department*/
SELECT NAME,DEPARTMENT_NAME
FROM employees INNER JOIN departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
WHERE department_name = 'FINANCE';

/*List all departments and the number of employees in each department.*/
SELECT DEPARTMENTS.DEPARTMENT_NAME, COUNT(employees.employee_id)
FROM employees LEFT JOIN  departments
ON employees.department_id = departments.department_id
group by departments.department_id,DEPARTMENTS.DEPARTMENT_NAME;

/*Find all employees who do not have a manager assigned to them.(self join)*/
select * from employees;
select* from departments;

SELECT e1.name AS employee_name
FROM employees e1
WHERE e1.manager_id IS NULL;


/* Get a list of all departments, including those that don’t have any employees assigned.*/

SELECT departments.department_name, 
    employees.name AS employee_name
FROM departments
LEFT JOIN employees 
ON departments.department_id = employees.department_id;

/* Count the total number of employees in each department, including departments with zero employees (use OUTER JOIN) */
select* from employees;
select * from departments;
SELECT departments.department_name, 
    COUNT(employees.employee_id) AS employee_count
FROM departments LEFT JOIN employees 
ON departments.department_id = employees.department_id
GROUP BY departments.department_name;


USE EXCELR;
/* List the employees who work in the same department as their manager. */
SELECT E1.NAME, M1.NAME, E1.DEPARTMENT_ID
FROM EMPLOYEES E1 JOIN EMPLOYEES M1
ON E1.MANAGER_ID = M1.EMPLOYEE_ID
AND
E1.DEPARTMENT_ID = M1.DEPARTMENT_ID;

/*Retrieve the department names and the names of employees who are assigned to those departments.*/
SELECT employees.name, departments.department_name
FROM employees 
INNER JOIN departments 
ON employees.department_id = departments.department_id;

SELECT 
    departments.department_name, 
    COALESCE(employees.name, 'No Employees') AS employee_name
FROM 
    departments
LEFT JOIN 
    employees 
ON 
    departments.department_id = employees.department_id;
    
    
    
    
    






