
---- \sql
-- \connect root@localhost:3306
-- show databases;
-- create database employee;
-- show databases;
-- use employee;
--show tables;
create table employee(
    employeeNo varchar(50),
    employeefirstName varchar(50),
    employeelastName varchar(50),
    phone int,
    email varchar(50),
    officecode varchar(50),
    reportsTo int,
    jobTitle varchar(50)
);
insert into employee values("E001","peter","kyle",9649343,"peter@email.com",1,1001,"president");
insert into employee values("E002","jonny","tailor",2354132,"jonny@email.com",1,1008,"vicepresident");
insert into employee values("E003","anthony","willson",7658764,"anthony@email.com",1,1031,"peon");
insert into employee values("E004","rock","hyden",9649343,"rock@email.com",0,1011,"peon");
insert into employee values("E005","mark","adam",9647653,"mark@email.com",1,1101,"qualitydepartment");
insert into employee values("E006","hussain","ali",9642314,"hussain@email.com",0,1041,"salesdepartment");

-- show data 
select * from employee;


-----------------------Q----------------------------

-- Find out The job Title of All employees

select JOBTITLE from Employee;

-- Retrieving Conntents of the EMPLOYEE_MASTER Table

select *



 from Employee;

-- Retrieving the list of first name,phone,email,of all employees

select EMPLOYEEFIRSTNAME,PHONE,EMAIL from Employee;

-- List all Employees Whose Office Code is 0

select *from Employee where OFFICECODE=0;

-- List all Employees Whose job title Is President

select *from Employee where JOBTITLE="President";

-----------------------Q----------------------------

-- Change the job title of emplyeeNo "E003" to Clerk

update Employee set JOBTITLE ="Clerk" where EMPLOYEENO ="E003";

--- Change the Report to of emplyeeNo "E006" to 1000

update Employee set REPORTSTO =1000 where EMPLOYEENO ="E006";

--- Change the OfficeCode of EmployeefiestName "jonny" to 0

update Employee set OFFICECODE =0 where EMPLOYEEFIRSTNAME ="Jonney";


