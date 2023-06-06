-- \sql
-- \connect root@localhost:3306
-- show databases;
-- create database ClientMaster;
-- show databases;
-- use ClientMaster;
-- show tables;
create table ClientMaster(
    ClientNo varchar(50),
    name varchar(50),
    City varchar(50),
    Pincode int,
    State varchar(50),
    BalDue int
);
insert into ClientMaster values('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);
insert into ClientMaster values('C00002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);
insert into ClientMaster values('C00003','Chhaya Banker','Mumbai',400057,'Maharashtra',5000);
insert into ClientMaster values('C00004','Ashwini Joshi','Banglore',560001,'Karnataka',0);
insert into ClientMaster values('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);
insert into ClientMaster values('C00006','Deepak Sharma','Banglore',560050,'Karnataka',0);

-- show data
select * from ClientMaster;
-- Delete database
Drop database ClientMaster;
--specific column show
select PinCode,BalDue from ClientMaster;
--find out the names of oll clients
select Name from ClientMaster;