
-- \sql
-- \connect root@localhost:3306
-- show databases;
-- create database ecommerce;
-- show databases;
-- use ecommerce;
-- show tables;
create table customers(
    customers_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    password varchar(50)
);
create table Products(
    Product_id int primary key,
    Product_name varchar(50),
    Product_description varchar(50),
    Product_price int,
    Product_quantity int ,
    category varchar(50)
);
create table orders(
    order_id int primary key,
    customers_id int ,
    order_date int ,
    total_price int,
    foreign key (customers_id)references customers(customers_id)
);
create table order_items(
    order_items_id int primary key,
    order_id int,
    orders int,
    Product_id int,
    quantity int,
    price int,
    foreign key (order_id) references orders(order_id) ,
    foreign key (Product_id) references Products(Product_id)
);

1.
insert into customers value(001,"nil","gajera","nil@gmail.com","nil1234");
insert into customers value(002,"mohit","bodar","mohit@gmail.com","mohit1234");
insert into customers value(003,"jay","gajera","jay@gmail.com","jay1234");
insert into customers value(004,"prince","patel","prince@gmail.com","prince1234");
insert into customers value(005,"vishal","patel","vishal@gmail.com","vishal1234");

2.
insert into products values (51,"T-Shirt","T-Shirt",300,25,"Mans");
insert into products values (52,"Shirt","Shirt",350,30,"Womens");
insert into products values (53,"Jeanse","Jeanse",300,25,"Mans & Womens");
insert into products values (54,"Lycra Tops","Lycra Tops",300,25,"Womens");

3.
insert into orders values (1010,001,25/3/2022,2000);
insert into orders values (1020,002,3/4/2023,3050);
insert into orders values (1030,003,20/7/2021,2020);
insert into orders values (1040,004,5/10/2020,1150);
4.
insert into Order_items values(11,1010,50,51,50,300);
insert into Order_items values(22,1020,10,52,10,350);
insert into Order_items values(33,1030,13,53,35,200);
insert into Order_items values(44,1040,42,54,20,100);

5.
select * from Customers;
6.
select * from products;
7.
select * from orders;
8.
select * from Order_items;
