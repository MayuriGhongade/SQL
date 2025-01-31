/*GROUP BY CLAUSE:
IT IS USED TO GROUP THE RECORDS
group by clause will execute row_by_row
SYNTAX:
SELECT GROUP_BY_EXPRESSION/GROUP FUNCTION
FROM TABLE_NAME
[WHERE <FILTER CONDITION>]--> WHERE CLUSE ARE OPTIONAL IN GROUP BY
GROUP_BY_COL_NAME/EXPRESSION;
*/

/*watd no of employees working in each deptno*/
select count(*),deptno
from emp
group by deptno;

/*grouping based on salary*/
select max(sal),min(sal),sum(sal), sal*12
from emp
group by sal*12;

select max(sal),min(sal),sum(sal),job, sal
from emp
group by job,sal;

select sal*12 as annual_sal
from emp
group by annual_sal;


/*wqtd maximum salary given to each job*/
select max(sal),job
from emp
group by job;

select * from emp;

/*wqtd number of employees working in each deptno except analyst*/
select count(*), deptno
from emp
where job!='analyst'
group by deptno;

/*waqtd number of times salary present in employee table*/

select count(*), sal
from emp
group by sal;



use excelr2;
desc emp;

select * from emp;


/*wqtd number of employee working in each deptno 
if there are atleast 3 employees working in each deptno*/

use excelr2;
desc emp;
select * from emp;


select count(*),deptno
from emp
group by deptno;

select count(ename)>=4, deptno
from emp
group by deptno;

select count(*), deptno
from emp
where deptno>=3
group by deptno;



















                                                                                                                                                                                                                                                                                                                                                     






















































