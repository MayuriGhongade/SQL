show databases;
create database excelr2;
use excelr2;
/* create table syntax:
create table table_name
(
col_name1 datatype,
col_name2 datatype,
:
col_namen dtatype
);  */


create table product
(
pid int,
pname varchar(50),
prize decimal(9,2),
quantity int,
mfg_date date,
exp_date date,
p_img blob
);

show tables;


create table flipkart
(
orderid int,
productid int,
price decimal(9,5),
order_date date,
quantity int,
address varchar(50),
delivery_date date,
return_date date,
paymentmode varchar(50),
refound decimal(6,3)
);

show tables;
desc flipkart; /* this is command is used to describe the structure of table */
desc product;


/* Rename:
"It is used to rename existing table name to new table name" */

rename table flipkart to amazon;
rename table amazon to myntra;
rename table myntra to amazon;
desc amazon;

/* alter:
"It is used to modify structure of table".
syntax: 
To add col_names
atler table table_name
add col_name datatype;
 */
 
 alter table amazon
 add discount int;
 
 desc amazon;
 
 /* syntax to drop a col name
 alter table table_name
 drop col col_name; */
 
 alter table amazon
 drop column refound;
 
 desc amazon;
 
 alter table amazon
 add refound int;
 
 alter table amazon
 drop refound;
 
 /* we can add multiple columns at a time*/
 alter table amazon
 add phno bigint,
 add disccount  int,
 add returndate date;
 
 desc amazon;
 
 
 /* Syntax rename the column
 alter table table_name
 rename column existing_name to new_name; */
 
 alter table amazon
 rename column price to cost;
 
 desc amazon;
 
 
 alter table amazon
 rename column paymentmode to pmode;
 
 
 alter table amazon
 drop column orderdate;
 
 alter table amazon
 add phno char(10);
 
 desc amazon;
 
 /* Change the datatype  */
 alter table amazon
 modify column orderid float;
 
 /* Drop:
 "It is Used to remove the table from database."
 
 syntax:
 drop table table_name;
 
 drop table amazon;
 
 
 desc product;
 
alter table product
drop column p_img;
 
 
 desc product;
 
 
 /Insert:
 "It is used to insert the records into table."
 insert into table_name values (v1,v2,v3,v4....vn); */
 
 insert into product (pid,pname,prize,quantity,mfg_date,exp_date) 
 value (1,'mobile',400000,1,'2024-12-12','2025-12-11'),
	  (2,'Freez',10000,1,'2023-11-12','2025-05-12'),
      (3,'laptop',800000,3,'2021-07-12','2025-07-11');
      
 insert into product values (4,'watch',5000,3,'2020-02-10','2023-01-05')
 
 select * from product;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

