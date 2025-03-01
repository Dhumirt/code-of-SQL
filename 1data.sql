create database cwpc;

show databases;

use cwpc;

create table Employee(
		id int,
	name varchar(50),
    age int ,
    city varchar(50),
    dob date,
    salary decimal(5,2)
);

show tables;

select * from Employee;

insert into Employee values(101,"Nishant",23,"Mumbai","1990-8-23",50.00);
insert into Employee values(102,"Rohan",56,"Pune","1991-8-23",80.00);
insert into Employee values(103,"Hitesh",96,"Surat","1956-8-23",78.00);
insert into Employee values(104,"Riya",52,"Jaipur","1996-8-23",56.00);
insert into Employee values(105, "Amit", 34, "Delhi", "1991-12-12", 70.50);
insert into Employee values(106, "Priya", 29, "Chennai", "1995-3-5", 62.30);
insert into Employee values(107, "Sanya", 41, "Bangalore", "1982-7-19", 88.40);
insert into Employee values(108, "Vikas", 39, "Kolkata", "1986-1-13", 74.20);
insert into Employee values(109, "Anjali", 25, "Hyderabad", "1997-10-8", 59.80);




