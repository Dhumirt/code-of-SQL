create table Employee1(
	id int primary key,
    name varchar(50),
    age int,
    city varchar(50),
    dob date,
    salary decimal(10,2)
);

select * from employee1;

insert into employee1 values(102,"Nisha",20,"Pune","1990-11-23",56000.00);

use cwpc;
create table cwpc_emp(
	id int primary key auto_increment,
    name varchar(50),
    age int,
    city varchar(50),
    dob date,
    salary decimal(10,2),
    email varchar(20) unique key,
    mobile varchar(30) unique key
);
select * from cwpc_emp;

insert into cwpc_emp (name,age,city,dob,salary,email,mobile) 
values("Tina",20,"Pune","2002-11-23",56000.00,"tina@p4n.in","7896541233"),
("Rohan",15,"mumbai","2005-11-23",45000.00,"rohan@p4n.in","4585698785"),
("Shubham",20,"mumbai","2000-11-23",5000.00,"shubham@p4n.in","4561236985"),
("Riya",45,"bhuj","1990-05-23",89000.00,"riya@p4n.in","4569874585");

 
truncate cwpc_emp;

drop table cwpc_emp;

delete from cwpc_emp where id = 4;

update cwpc_emp
set Salary = 96000.00 
where id = 1;

select * from cwpc_emp;


insert into cwpc_emp (name,age,city,dob,salary,mobile) 
values("heena",20,"Surat","1998-11-23",45000.00,"7856987455");
