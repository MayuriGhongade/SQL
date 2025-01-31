/*FUNCTION:
it is block of code
two types of function
1)User defined function: defned by user
2) BuiltIn Function: prebuilt, predefined , also called aggregate function
-->1)avg()
-->2)count()
-->3)sum()
-->4)min()
-->5)max()


use excelr2;

dec emp;

select * from emp;


/* waqtd maximum salary of employee*/
select max(sal)
from emp;

/*wqtd minimum salary given to a manager*/
select min(sal) 
from emp
where job='manager';

/*watd total salary given to sales man*/
select sum(sal)
from emp
where job = 'salesman';

/*wqtd avrage sal given to dept number 30 */
select * from emp;

select avg(sal)
from emp
where deptno=30;

/* wqtd no of employee working in deptno 20 */
select count(ename)
from emp
where deptno=20;

select count(*)
from emp
where deptno=20;

select max(sal*12)
from emp;

select max(sal)
from emp;

select max(sal,sal*12)
from emp;

/* CHARECTERISTICS OF MRF:
1)MRF() WILL ACCEPT ONLY ONE ARGUMENT i.e  col_name/expression.
2)mrf() ignores null values. 
3) alog with mrf()  we cannot pass any other column as argument*/


/*watd maximum salary, minimum salary, total salay, 
average salary, no of employees working as analyst*/

select * from emp;

select max(sal),min(sal),sum(sal),avg(sal),count(*)
from emp
where job='analyst';


/*watd maximum salary, minimum salary, total salay, 
average salary, annual salary no of employees working as analyst*/

select max(sal),min(sal),sum(sal),avg(sal),count(*),sal*12
from emp
where job='analyst';

/*single row function :
1)Length()
2)upper()
3)lower()
4)reverse()
5)mode()
now()
pi()
round()
sqrt()
*/

/*wqtd whetere employee names are palindrom are not*/

select ename from emp
where  ename=reverse(Ename);

/*even number of employee number*/
select * from emp;
update emp
set ename="nitin"
where sal=800;

/*even number*/
select empno 
from emp
where mod(empno,2)=0;

/*odd nUmber*/
select empno 
from emp
where mod(empno,2)!=0;

select now();
select pi();
select round(4.1);
select sqrt(49);
select pow(2,3);


/*USER DEFINED FUNCTION*/
 SET GLOBAL  log_bin_trust_function_creators =1;


/*watd no of employee working in each deptno */











































