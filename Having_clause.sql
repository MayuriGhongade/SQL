/*HAVING CLAUSE:
"IT IS USED TO FILTER GROUPS"
->IN HAVING CLAUSE WE CAN WRITE MRF().
->syntax:
SELECT GROUP BY EXPRESSION/GROUP FUNCTION
FROM TABLE_NAME
[where <filter condition} */

use excelr2;
desc emp;
select * from emp
/*wqtd number of employee working in each deptno 
if there are atleast 3 employees working in each deptno*/

select count(*), deptno
from emp
group by deptno
having count(*)>=3;

select count(*), deptno
from emp
group by deptno
having count(*)>=5

/*wqtd no of emplyees working in each department number if there are atleast 4 employees working in 
each deptno except analyst*/

select * from emp;

select count(*), deptno
from emp
where job!='analyst'
group by deptno
having count(*)>=4;



select count(*), job
from emp
where job!='analyst'
group by job
having count(*)>=4;

/*wqtd hiredate which is duplicated or repeted*/
select * from emp;

select hiredate, COUNT(*)
from emp
group by hirEdate
having count(*)>1;


/*WQTD JOB WHICH IS REPEATED*/

SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*)>1;



SELECT COUNT(*),JOB
FROM EMP
GROUP BY JOB
HAVING COUNT(*)>1;

 /* WRITE QUERY TO DISPLAY MAXIMUM SALARY GIVEN TO EACH JOB 
 IF MAXIMUM SALARY MORE THAN 2000*/
 
 SELECT JOB, MAX(SAL)
 FROM EMP
 WHERE SAL>2000
 GROUP BY JOB;
 
 /*WQTD TOTAL SALARY GIVEN TO EACH DEPARTMENT NUMBER IF TOTAL SALARY IS MORE THAN 1000*/
 
 SELECT SUM(SAL), DEPTNO
 FROM emp
 GROUP BY DEPTNO
 HAVING SUM(SAL)>10000;
 
 
/*WQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPARTMENT NUMBER
IF EMPLOYEE GETTING A SALRY MORE THAN 1000 AND EMPLOYEE 
TOTAL SALARY  IS MORE THAN 3400*/
SELECT COUNT(*), DEPTNO
FROM EMP
WHERE SAL>1000
GROUP BY DEPTNO
HAVING SUM(SAL)>3400;


/*WQTD NO OF EMPLOYEES WORKING IN EACH JOB EXCLUDING SALESMAN
 IF THERE ARE ATLEAST 3 EMPLOYEES WORKING IN EACH JOB AND
 MAXIMUM SALARY GIVEN TO EACH JOB IS EXCTLY 3000*/
 
SELECT COUNT(*), JOB
FROM EMP
WHERE JOB!='SALESMAN'
GROUP BY JOB
HAVING COUNT(*)>=3 AND MAX(SAL)=3000;

/*WQTD HIRDATE WHICH IS REPETED IF EMPLOYEE GETTING SALARY 
BUT NOT COMMISSION*/
SELECT COUNT(*), HIREDATE
FROM EMP
WHERE SAL IS NOT NULL AND COMM IS NULL
GROUP BY HIREDATE 
HAVING COUNT(*)>1;	




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 

 
 
 
 
 
 
 
 
 












