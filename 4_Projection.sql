/*PROJECTION*/
/*Syntax: 
SELECT [DISTINCT] COLUMN_NAME/EXPRESSION[ALIAS] FROM TABLE_NAME; */

show databases;
use excelr2;
select * from emp;

/*waqtd name & designation of employee*/
select ename, job from emp;

/*waqtd details of department table*/
select * from dept;

/*waqtd name and annualsalary of employee*/
/*Expression:
use the expression- The statement which gives the result, expression is the combination of operation and operant*/
select ename, sal*12 from emp; 

/* waqtd name & halfterm salary of employee*/
select ename, sal*6 from emp;

/* waqtd name of employee along with 10% hike (hike-increment)*/
select ename, sal+sal*10/100 from emp;

/* waqtd name of employee along with  20% deduction in a salary*/
select ename, sal-sal*20/100 from emp;

/*ALIAS-AS*/
select ename,sal*12 as annualsalary from emp;

select ename,sal*12 as annual_salary from emp;

select ename,sal*12 as "annual salary" from emp;

select * from emp;

/*DISTINCT CLAUSE:
"it is used to remove duplicate values".
"Distinct keyword has to be used as first argument in select".
*/
select DISTINCT deptno from emp;

select  sal,deptno from emp;
select DISTINCT sal,deptno from emp;











































 