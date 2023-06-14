
sql
\connect root@localhost:3306
show databases;
-- 1..create database libraydb;
show databases;
use libraydb;
-- 2..
create table Books(
    Book_id int primary key,
    Title varchar(255),
    Auther varchar(255),
    Publisher varchar(255),
    Publication_date int,
    category varchar(255)
);
create table Members(
    Member_id int primary key,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    Phone varchar(255),
    Address varchar(255),
    Membership_type varchar(255),
    Membership_start int,
    Membership_end int
);
create table Loans(
    Lone_id int primary key,
    Member_id int,
    Book_id int,
    Lone_date int,
    Return_date int,
    foreign key (Member_id) references Members(Member_id),
    foreign key (Book_id) references Books(Book_id)
);
show tables;

-- insert data :-

insert into Books values(0001,"kla","lam","ltl",27/4/1825,"vishl");
insert into Books values(0002,"def","sol","gim",28/8/1995,"jay");
insert into Books values(0003,"jdk","dal","nmd",30/2/1888,"rutvik");
insert into Books values(0004,"ewq","tvl","til",25/10/1999,"niles");
insert into Books values(0005,"ykl","unm","ikl",25/1/1536,"rutvik");

insert into Members values(0006,"jay","kalathiya","Jay@gmail.com",25369123,"Near VR MALL","asd",1/2,14/3);
insert into Members values(0007,"rutvik","BODAR","Rutvik@gmail.com",38562314,"Near MAHADEV MALL","xyz",12/4,14/3);
insert into Members values(0008,"nil","PATEL","Ramesh@gmail.com",87452130,"Near Rahulraj MALL","twl",12/8,9/12);
insert into Members values(0009,"prince","patel","Suresh@gmail.com",854213369,"Near abc MALL","qlq",1/10,20/11);
insert into Members values(00010,"vishal","kalathiya","Vishal@gmail.com",2536987,"Near Dipkamal MALL","azx",12/12,31/12);

insert into Loans values(1000,00016,0001,22/02/2021,9/06/2021);
insert into Loans values(2000,00017,0002,28/05/2021,10/07/2022);
insert into Loans values(3000,00018,0003,15/06/2021,20/08/2021);
insert into Loans values(4000,00019,0004,05/08/2020,5/5/2020);
insert into Loans values(5000,000110,0005,08/10/2020,26/2/2020);

(5)
select *from books;
select *from Members;
select *from loans;
6..select Book_id from Books ;

 7..select * from Members where Membership_end>Membership_start;

 8..select Members.Member_id,Loans.Lone_id,Loans.Book_id,Loans.Lone_date from Loans
inner join Members on Members.Member_id = Loans.Member_id;

9.. update Members set phone=2536987 where Member_id 00010;

 10.. delete from books where book_id =0003;