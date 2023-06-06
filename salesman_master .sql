--\sql
-- \connect root@localhost:3306
-- show databases;
-- create database salesman_Master;
-- show databases;
-- use salesman_Master;
create table salesman_Master(
    salesmanNo varchar(50),
    Name varchar(50),
    address1 varchar(50),
    address2 varchar(50),
    city varchar(20),
    pinCode int,
    state varchar(20),
    salAmt int,
    TagToGet int,
    YtdSales int,
    Remarks varchar(20)
);


insert into Salesman_Master values('S00001','Aman','A/14','Worli','Mumbai',40002,'Maharashtra',3000,100,50,'Good');
insert into Salesman_Master values('S00002','Omkar','65','Nariman','Mumbai',40001,'Maharashtra',3000,200,100,'Good');
insert into Salesman_Master values('S00003','Raj','P-7','Bandra','Mumbai',40032,'Maharashtra',3000,200,100,'Good');
insert into Salesman_Master values('S00004','Ashish','A/5','Juhu','Mumbai',40042,'Maharashtra',3500,200,150,'Good');

-- Show data :-

select *from Salesman_Master;

-- delete database :-

Drop database Salesman_Master;
