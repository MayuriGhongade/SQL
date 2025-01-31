show databases;
use excelr2;

create table UBER
(
V_ID INT,
V_NO VARCHAR(50),
DRIVER_NO BIGINT
);
 rename table UBER TO OLA;

desc ola;

/*ALTER*/
alter table ola
modify column v_id  Bigint;

alter table ola
add column payment int;


alter table ola
drop column v_no;

alter table ola
rename column payment to pmode;

alter table ola
modify column v_id  Varchar(50);

desc ola;

insert into ola values
('MH4T1234',1234567890, 450000);

select * from ola;

select * from product;

/*UPDATE:
"It is use to update existing value to new value"
UPDATE TABLE NAME
SET COL_NAME=VALUE1,COL_NAME1=VAL2...
	COL_NAME=VALN
WHERE CONDITION;
*/

update product
set pname='samsung'
where pname='mobile';

select * from product;


update product
set pid=3,pname="freez", prize=400000
where price=650000;

select * from product; 

/* Delete:
"It is used deletE particular record from the table'
syntax: delete from table_name where <condition> */

delete from product where pname="samsung";
select * from product;

delete from product;

/*truncate:
'It is used to remove all the records from the table permantly but structure of a table remain same."
syntax:
truncate table table_name;
*/

truncate table  product;










