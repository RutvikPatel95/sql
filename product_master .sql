-- \sql
-- \connect root@localhost:3306
-- show databases;
-- create database ProductMaster;
-- show databases;
-- use ProductMaster;
-- show tables;
create table ProductMaster(
    ProductNo varchar(50),
    Description varchar(50),
    ProfitPercent float,
    UnitMeasure varchar(50),
    QtyOnHand int,
    ReorderLvl int,
    SellPriec int,
    CostPriec int
);
insert into ProductMaster values('P00001','T-Shirt',5,'Piece',200,50,350,250);
insert into ProductMaster values('P0345','Shirt',6,'Piece',150,50,500,350);
insert into ProductMaster values('P06734','Cotton Jeanse',5,'Piece',100,20,600,450);
insert into ProductMaster values('P07865','Jeanse',5,'Piece',100,20,750,500);
insert into ProductMaster values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into ProductMaster values('P07885','Pull Overs',2.5,'Piece',80,30,700,450);
insert into ProductMaster values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into ProductMaster values('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into ProductMaster values('P08865','Skirts',5,'Piece',75,30,450,300);

-- show data 
select * from ProductMaster;
-- Delete database
Drop database ProductMaster;