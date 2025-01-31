
show databases;
use excelr2;
select * from emp;

select ename,sal*12+2000
from emp;

/* WQTD details of employee if employees are hired before 1982 */
select ename, hiredate from emp where hiredate <'1982-01-23';
select * from emp where hiredate <'1982-01-01';

/*wqtd name, salary, commission of employee if employee is getting salary of 3000*/
select * from emp;
select ename, sal, comm from emp where sal = 3000;











