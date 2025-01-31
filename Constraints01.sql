use excelr2;


create table dept01
(
deptno int primary key,
dname varchar(50),
loc varchar(50)
);


create table emp01
(
empno int primary key,
ename varchar(50),
sal int,
deptno int,
constraint deptno foreign key (deptno)
references dept01(deptno)
);