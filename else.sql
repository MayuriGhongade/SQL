
create table product3
(
pid int,
pname varchar(50),
price int,
quantity int);

insert into product3 values
(1,'mobile1',10000,1),
(2,'mobile2',20000,5),
(3,'mobile3',25000,6),
(4,'mobile4',9000,8);


select * from product3;


select pid, pname, price, quantity,
case when price>20000 then
"expensive product"
else
"not expensive product"
end as status
from product2;

select ename,sal,
case when sal>2000 then
"maximum salary"
else
"minimum salary"
end as a1
from emp;

select ename,comm,
case when comm> 0 then 
"employee is getting commission"
else
"employee is not getting commission"
end as s
from emp;


































