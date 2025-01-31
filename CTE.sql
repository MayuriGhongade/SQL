/*CTE:--COMMON TABLE EXPRESSION
 USE WITH CLAUSE */

use excelr2;
select * from emp;

WITH cte1 AS (select ename, sal from emp where deptno in (10,20,30))
select max(sal)from cte1;


WITH AVGSAL AS(SELECT AVG(SAL) SAL FROM EMP)
SELECT * FROM EMP,AVGSAL WHERE EMP.SAL>AVGSAL.SAL;


USE EXCELR;

CREATE TABLE emp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);




INSERT INTO emp(name, department, salary) VALUES
('John Doe', 'Sales', 55000.00),
('Jane Smith', 'Sales', 60000.00),
('Jim Brown', 'Sales', 65000.00),
('Jake White', 'Engineering', 75000.00),
('Jill Green', 'Engineering', 80000.00),
('Jenny Black', 'Engineering', 85000.00),
('James Gray', 'Marketing', 50000.00),
('Janet Blue', 'Marketing', 52000.00),
('Joan Pink', 'Marketing', 54000.00);


SELECT * FROM EMP;

WITH department_salaries AS (
    SELECT department, 
           SUM(salary) AS total_salary, 
           AVG(salary) AS average_salary
    FROM emp
    GROUP BY department
)
SELECT department, total_salary, average_salary
FROM department_salaries
WHERE average_salary > 60000;



CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES categories(id)
);




INSERT INTO categories (name, parent_id) VALUES
('Electronics', NULL),
('Computers', 1),
('Laptops', 2),
('Desktops', 2),
('Smartphones', 1),
('Accessories', 1),
('Chargers', 6),
('Cables', 6);




WITH RECURSIVE category_hierarchy AS (
    SELECT id, name, parent_id, 1 AS level
    FROM categories
    WHERE parent_id IS NULL
    UNION ALL
    SELECT c.id, c.name, c.parent_id, ch.level + 1
    FROM categories c
    JOIN category_hierarchy ch ON c.parent_id = ch.id
)
SELECT id, name, parent_id, level
FROM category_hierarchy;
