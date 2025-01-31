show databases;
use excelr2;
select * from emp;

/* TYPES OF OPERATOR:
1)ARITHMATIC OPERATORS (+, -, *,/)
2)CONCATINATION OPERATOR:
   >>> IT IS USED JOIN TWO STRING TOGETHER
   >>>SYNTAX: CONCAT('STR1', 'STR2')
   >>>EX: CONCAT('ASHWIN','ASHWINI')----> ASHWINASHWINI 
3)COMPARISION OPERATOR(=, !=)
4)RELATIONAL OPERATORS(<,>,<=,>=)
5)LOGICAL OPERATORS(AND,OR,NOT)
6)SPECIAL OPERATORS(IN,NOT IN,BETWEEN,IS,IS NOT,LIKE,NOT LIKE)
7)SUBQUERY OPERATORS(ALL,ANY,EXISTS,NOT EXISTS)*/

/* LOGICAL OPERATORS:
>>Use to write multiple conditions in where clause.
>>The output of logical operator is always a boolean value.
>> Types of logical operator-->
>> 1)AND:
     ->It is a binary Operator which accept 2 oprends(input).
     ->AND OPERATOR is used where both the conditions must be satisfied.

/*waqtd name , salary, depno of employee if employee is getting a salary more than 2000 and working in deptno 20*/
select * from emp;

select ename, sal,deptno from emp where sal>2000 and deptno=20;

/*waqtd name , salary, depno of employee if employee is getting a salary less than 2000 and working in deptno 20*/
select ename, sal,deptno from emp where sal<2000 and deptno=40;

/*wqtd details of employee if employee is working as manager and workiing in deptno 30*/
select * from emp where job= 'manager' and deptno=30;

/*wqtd name, hiredate,job of employee if employee is working as samlesman and hired before 1982*/
select ename, hiredate, job from emp  where job='SALESMAN' and hiredate < '1982-01-01';

/*>>2)OR:
OR OPERATOR are used whenevre any one condition has to be satisfied.*/

/*watd name of employee if employee is working in deptno 10,20,30 */
select * from emp; 
select ename from emp where deptno=10 or deptno=20 or deptno=30;

/*wqtd name & job of employee if employee working as president or working as clerk*/
select ename, job from emp where job='president' or job='clerk';

/*MIX THE QUERY AND ,OR: whenever we copaire the and-or bot at a time must neet brackets after applying one condition  */
/*waqtd name, salary,job, deptno of employee if employee is hired after 1981 and 
getting salary less than 2500 and working in depno 20 or 30*/
select ename, sal, job, hiredate 
from emp where 
hiredate>'1981-12-31' 
and sal<2500 
and (deptno=20 or deptno=30);

/* wqtd details of employee if employee annual salary is more than 12000 and working  in deptno 10 or 20 
and working  as manager or analyst*/

select * from emp 
where sal*12>12000 
and (deptno=10 or deptno=20) 
and (job='manager' or job='analyst');

/*wqtd name, hiredate, job,deptno of employee along with 20% hike in a salary if employee is hired after 1981 but befor 1987 and
 working as salesman or manager or analyst and getting salary more 1000 and working in dept 10 or 30*/
 
 select ename,  hiredate, job, deptno, sal+sal*20/100 
 from emp 
 where hiredate> '1981-12-31' and hiredate<'1987-01-01'
 and (job='salesman' or job='manager' or job='analyst') 
 and sal>1000 
 and (deptno=10 or deptno=30);
 
 /*>>3) Not Operator:Negate the result, unary operator*/
 
 /* waqtd name and deptno of employee if employee is not working in deptno 30
  not equal to -> !=
  not<> */
 select ename, deptno 
 from emp
 where deptno !=30;
 -- where not deptno=30;
 -- where dept<>30;
 
 
 /*waqtd name and job of employee if employee is not working as salesman*/
 select ename, job
 from emp 
 where job != 'salesman' ;
 
 /* 2) SPECIAL OPERATOR
 >>I)IN
 >>II)NOT IN
 >>III)BETWEEN
 >>IV)NOT BETWEEN
 >>V)IS
 >>VI)IS NOT
 >>VII)LIKE
 >>VIII)NOT LIKE */
 
 /* >>I)IN : It is multvalued operatore, behave like a or operator, except the multiple value. */
 select ename, deptno
 from emp
 where deptno IN (10,20,30);
 -- where deptno=10 or deptno=20 or deptno=30;
 
 /*waqtd  name and job of employee if working as manager or salesman or analyst */
 select ename, job 
 from emp  
 where job IN ('Manager','salesman','analyst');
 
 
 /* >>II)NOT IN: It is excatly opposite to IN OPERATOR
        is similar to in operator instead of selecting values values are getting rejected.
        It working like AND OPERATOR*/
       
 /*waqtd name and deptno of employee if employee is not working in deptno 20,30*/
 select ename , deptno 
 from emp
 where deptno NOT IN(20,30);
 
 /*with logical oprator*/
 select ename , deptno 
 from emp
 where deptno !=20 and deptno!=30;
 
 /*waqtd name of employee if employee is hired during 1981 */
 select ename, HIREDATE
 from emp
 where hiredate>='1981-01-01' AND hiredate <= '1981-12-31';
 
 
 /* >>III)BETWEEN:
     _> BETWEEN OPERATOR are use whenever there is range of values
     syntax: COL_NAME BETWEEN LOWERANGE AND HIGHERANGE*/
     
/*waqtd name of employee if employee is hired during 1981 */
 select ename, hiredate
 from emp
 where hiredate BETWEEN'1981-01-01' AND '1981-12-31';
     
     
 /*waqtd name , salary of emplyee if employee getting a salary in the range of 2000 and 5000*/
 select ename, sal 
 from emp 
 where sal BETWEEN 2000 AND 5000;
 
 
 /*>>IV)NOT BETWEEN:
 --->it is opposite of between operator 
 ---> syntax: col_name NOT BETWEEN lowerange AND Higherrange; */
 
 
 /* waqtd name and hiredate of employee if employee not hired during 1981 */
 select ename, hiredate
 from emp
 where hiredate NOT BETWEEN '1981-01-01' AND '1981-12-31';
 
 /* wqtd name and salary of employee if employee is not getting salary in the range of 2000 and 4000*/
 select ename, sal 
 from emp 
 where sal NOT BETWEEN 2000 AND 4000;
 
 /* wqtd ename and salary of employee if employee is not getting salary between 1000 and 3000
 --> Range-----> Not Increment and Decrement
 --> Between--->Need TO Do Increment and Decremnet
 --> range between ---> Need TO Do Increment and Decremnet*/
 select ename , sal 
 from emp where sal
 NOT BETWEEN 1001 AND 2999;
 
 /*wqtd name and  salary of employee if employee not getting a salary in the range between 2000 and 5000*/
 select ename, sal
 from emp
 where sal NOT BETWEEN 2001 AND 4999;
 
 
 SELECT * FROM EMP;
 
 update emp
 set comm = 1000
 where ename='TURNER'
 
 
 
 /* >>V)IS OPERATOR:
 -->This operator is used to compare with null value
 --> syntax: col_name IS NULL*/
 /*watd name and commission of employee if employee is not getting a commission*/
select ename, comm 
from emp 
where comm IS NULL;
 
 /*waqtd name and salary of  employee if employee is not getting salary*/
 select ename, sal 
 from emp 
 where sal IS NULL;
 
 
 /* waqtd name of employee if employee does not have reporting manager */
 select ename from emp 
 where mgr IS NULL;
 
 /* >>VI)IS NOT OERATOR:
 -->It is used to caompare with not null values, should not empty.
 -->SYNTAX: COL_NAME/EXPRESSION IS NOT NULL */
 
 /*waqtd name and commission of employee if employee is getting commission*/
 select ename, comm 
 from emp
 where COMM IS NOT NULL;
 
 /* commbination:
 waqtd name and salary and commission of employee if 
 employee is getting a salary but not commission*/
 select ename, sal, comm
 from emp
 where sal IS NOT NULL 
 AND comm IS NULL;
 
 /*>>VII)LIKE:
 --->It is used for pattern Matching.
 --->To achieve pattern matching we require two symboles
 ---> i) %  ii) _
 --->SYNTAX
 ------>COLUMN_NAME LIKE 'PATTERN_TO_MATCH  */
 
 /*  i)%   */
 /*waqtd name of employee if employee name start with s */
 select ename 
 from emp 
 where ename LIKE 's%';
 
 /*waqtd name of employee if employee name ends with r */
 select ename 
 from emp 
 where ename LIKE '%R';
 
 
 /*waqtd name of employee if employee name starts with M and ends With  N */
 -- oneway
 select ename
 from emp
 where ename LIKE 'M%' AND ename LIKE  '%N';
 
 -- second way
 select ename
 from emp
 where ename LIKE 'M%N';
 
 -- Third way
 select ename
 from emp
 where ename LIKE 'M%%N';
 
 -- where ename LIKE 'M%' AND ename LIKE  '%N';
 -- where ename LIKE 'M%N';
 --  where ename LIKE 'M%%N';
 
 /*wqtd name of employee if employee name has a charecter A in their name */
 
 select ename
 from emp
 where ename like '%A%';
 
 
 /*waqtd  name of employee if employee name has 4 characters*/ 
 -- use _ here
 select ename 
 from emp
 where ename like '____';
 
 /*wqtd name of employee if employee names  2nd charecters starts with L */
 select ename 
 from emp
 where ename like '_L%';
 
 /* waqtd name of employee if employee names 3rd charecter starts with R */
 select ename
 from emp
 where ename like '__R%';
 
 /*wqtd name of employee if employee name's last but one charactere is E */
 select ename
 from emp
 where ename like '%E_';
 
 /*wqtd name of employee if employee names starts with  VOWELS */
SELECT ename
FROM emp
WHERE ename LIKE 'A%' 
   OR ename LIKE 'E%' 
   OR ename LIKE 'I%' 
   OR ename LIKE 'O%' 
   OR ename LIKE 'U%';
   
-- where ename like 'a%' or 'e%' or 't%' or 'o%' or 'u%';


/*wqtd name of employee if employee name has _ in there name */
SELECT ename
FROM emp
WHERE ename LIKE '%@_%' escape '@' ;

update  emp 
set ename= 's_mith'
where ename= 'smith';

select * from emp;


update  emp 
set ename= 's%mith'
where ename= 's_mith';


select ename 
from emp
where ename like '%@%%' escape '@' ;


update  emp 
set ename= 'smith'
where ename= 's%mith';

select * from emp;

 /* >>VIII)NOT LIKE */
/*wqtd  name of employee if employee does not start with vowels */
select ename 
from emp
where ename not like  'a%' and ename not like 'e%' and ename not like 'i%' and ename not like 'o%' and ename not like 'u%'; 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 

       
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









 

   
   
