--\sql
--\connect root@localhost:3306
-- show databases;
-- create database developer1;
-- show databases;
-- use Developer1;
-- Cretae table ClientMaster

create table ClientMaster(
    ClientNo varchar(50) primary key,
    name varchar(50) not null,
    City varchar(50),
    Pincode int,
    State varchar(50),
    BalDue int
);

-- Cretae table ProductMaster

create table ProductMaster(
    ProductNo varchar(50) primary key,
    Description varchar(50),
    ProfitPercent int,
    UnitMeasure varchar(50),
    QtyOnHand int,
    ReorderLvl int,
    SellPriec int,
    CostPriec int
);

-- Cretae table SalesmanMaster

create table SalesmanMaster(
    SalesmanNo varchar(50) primary key,
    Name varchar(50),
    address1 varchar(50), 
    address2 varchar(50),
    City varchar(50),
    PinCode int,
    State varchar(50),
    SalAmt int,
    TgtToGet int,
    ytdSales int,
    Remarks varchar(50)
);

-- Cretae table salesman order


create table salesman_Order(
    OrderNo varchar(20) primary key,
    ClientNo varchar(20),
    OrderDate varchar(20) not null,
    SalesmanNo varchar(20),
    DelType varchar(20),
    Billyn varchar(20),
    DelyDate varchar(20),
    Orderstatus varchar(30),
    constraint cl_no foreign key (ClientNo) references ClientMaster(ClientNo),
    constraint sl_no foreign key (SalesmanNo) references SalesmanMaster(SalesmanNo)
);

-- Cretae table Salesman Order Details

create table Salesman_Order_Details(
    OrderNo varchar(20),
    ProductNo varchar(20),
    QtyOrderd int, 
    QtyDisp int,
    productCreate int,
    foreign key (OrderNo) references salesman_Order(OrderNo),
    foreign key (ProductNo) references ProductMaster(ProductNo)
);
-- show tables;

-- Inser Data ClientMaster
insert into ClientMaster values('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);
insert into ClientMaster values('C00002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);
insert into ClientMaster values('C00003','Chhaya Banker','Mumbai',400057,'Maharashtra',5000);
insert into ClientMaster values('C00004','Ashwini Joshi','Banglore',560001,'Karnataka',0);
insert into ClientMaster values('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);
insert into ClientMaster values('C00006','Deepak Sharma','Banglore',560050,'Karnataka',0);

-- Insert Data ProductMaster

insert into ProductMaster values('P00001','T-Shirt',5,'Piece',200,50,350,250);
insert into ProductMaster values('P0345','Shirt',6,'Piece',150,50,500,350);
insert into ProductMaster values('P06734','Cotton Jeanse',5,'Piece',100,20,600,450);
insert into ProductMaster values('P07865','Jeanse',5,'Piece',100,20,750,500);
insert into ProductMaster values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into ProductMaster values('P07885','Pull Overs',2.5,'Piece',80,30,700,450);
insert into ProductMaster values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into ProductMaster values('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into ProductMaster values('P08865','Skirts',5,'Piece',75,30,450,300);

-- Insert Data SalesmanMaster

insert into SalesmanMaster values('S00001','Aman','A/14','Worli','Mumbai',40002,'Maharashtra',3000,100,50,'Good');
insert into SalesmanMaster values('S00002','Omkar','65','Nariman','Mumbai',40001,'Maharashtra',3000,200,100,'Good');
insert into SalesmanMaster values('S00003','Raj','P-7','Bandra','Mumbai',40032,'Maharashtra',3000,200,100,'Good');
insert into SalesmanMaster values('S00004','Ashish','A/5','Juhu','Mumbai',40042,'Maharashtra',3500,200,150,'Good');

-- Insert Data salesman order
insert into salesman_Order values("O19001","C00001","12-June-04","S00001","F","N","20-July-02","In process");
insert into salesman_Order values("O19002","C00002","25-June-04","S00002","P","N","27-June-02","CANCELLED");
insert into salesman_Order values("O46865","C00003","18-Feb-04","S00003","F","Y","20-Feb-02","Fulfilled");
insert into salesman_Order values("O19003","C00001","03-Apr-04","S00001","F","Y","07-April-02","Fulfilled");
insert into salesman_Order values("O46866","C00004","20-May-04","S00002","P","N","22-May-02","CANCELLED");
insert into salesman_Order values("O19008","C00005","24-May-04","S00004","F","N","26-July-02","In process");

-- Insert Data Salesman Order Details

insert into Salesman_Order_Details values("O19001","P00001",4,4,525);
insert into Salesman_Order_Details values("O19001","P07965",2,1,8400);
insert into Salesman_Order_Details values("O19001","P07885",2,1,5250);
insert into Salesman_Order_Details values("O19002","P00001",10,0,525);
insert into Salesman_Order_Details values("O46865","P07868",3,3,3150);
insert into Salesman_Order_Details values("O46865","P07885",3,1,5250);
insert into Salesman_Order_Details values("O46865","P00001",10,10,525);
insert into Salesman_Order_Details values("O46865","P0345",4,4,1050);
insert into Salesman_Order_Details values("O19003","P0345",2,2,1050);
insert into Salesman_Order_Details values("O19003","P06734",1,1,12000);
insert into Salesman_Order_Details values("O46866","P07965",1,0,8400);
insert into Salesman_Order_Details values("O46866","P07975",1,0,1050);
insert into Salesman_Order_Details values("O19008","P00001",10,5,525);
insert into Salesman_Order_Details values("O19008","P07975",5,3,1050);

----------------------------Q------------------------------------------

--(1)list the names of clientmaster 
select  *from clientMaster where name like '_a%';

--(2)list the client who stay in a city whose first letter is 'm'
select  *from clientMaster where city like 'm%';

--(3)list all client who stay in bangalore or mangalore
select  *from clientMaster where city in ("banglore","manglore");

--(4)list all clients whose BalDue is greater than value 10000
select  *from clientMaster where  BalDue >10000;

--(5)list all information from the sales order table month of june
select  *from  salesman_Order where OrderDate like '%_june_%';

--(6)
select  *from salesman_Order where  ClientNo in ("C00001","C00002");

--(7)
select  *from ProductMaster where  SellPriec between 500 and 750;

--(8) 
select name ,city ,state from clientMaster where state not in ("Maharashtra");

--9
select sum(QtyOnHand) as total from ProductMaster;

--10
select avg(QtyOnHand) as total from ProductMaster;

--11
select max(QtyOnHand) as total from ProductMaster;
select min(QtyOnHand) as total from ProductMaster;

--12
select ProductNo from productMaster where SellPriec<=500;

--13
select description from productMaster where QtyOnHand>ReorderLvl;
--14
select *, (SellPriec*15) as new_price from productMaster where SellPriec<=500;

-----------------------function------------------------------------------------
select abs(SellPriec) as total from productMaster;
select lower(description) as total from productMaster;
select upper(description) as total from productMaster;
select concat(description,UnitMeasure) as total from productMaster;
select substr(description,1,2) as total from productMaster;
select cosh(SellPriec) as total from productMaster;
select sum(QtyOnHand) as total from ProductMaster;
select avg(QtyOnHand) as total from ProductMaster;
select max(QtyOnHand) as total from ProductMaster;
select min(QtyOnHand) as total from ProductMaster;