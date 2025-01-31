/* SELECTION:
"It is process of retriving a data by selecting both rows and columns"
syntax:
select [distinct] column_name/expression[alias] from table_name where<condition>; */

/*Where clause:
"It is used to filter the records"
->it will excute row_by_row. */

/*waqtd name & deptno of employee if employee is working in deptno 20 */
select * from emp;

select ename, deptno from emp
where deptno = 20;

/*waqtd name and salary of employee if employee is getting more than 2500*/
select * from emp;
select ename, sal from emp where sal>2500;

/*waqtd name and job of employee if employee  is working as manager*/
select ename, job from emp where job='manager';

/*waqtd details of employee along with annual salary if employee annual salary is more than 10000 */
select *, sal*12 as anaual_salary from emp where sal*12 > 10000;

/*waqtd name and hiredate of employee if employee  hired after 1981*/
select ename, hiredate from emp where hiredate>'1981-12-31';







