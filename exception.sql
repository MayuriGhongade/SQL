use excelr2;

create table payment
(
client_id int,
amount int not null
);

create table fraud
(
clientid int,
amount int,
msg varchar(100),
tot datetime
);

call payment_info(1,100);
select  * from payment;

select * from fraud;













