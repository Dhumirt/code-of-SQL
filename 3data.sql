
show databases;
use classicmodels;

show tables;
select * from customers;


select * from customers where country = "USA";
-- < , >
select * from customers where creditlimit > 50000;
select * from customers where creditlimit < 50000;



select * from customers where creditlimit < 50000 and country = "USA";

select * from customers where creditlimit < 50000 or country = "USA";

-- count()
select count(customername) from customers where creditlimit < 50000 and country = "USA";


select customername,city,state,country,creditlimit from customers;

select customername,city,state,country,creditlimit , creditlimit - 1500 as Update_amount 
from customers where country = "USA" and city = "NYC";


use classicmodels;
select * from customers where customername like "a%";
select * from customers where customername like "%a%";
select * from customers where customername like "%s";

 

select * from customers limit 5;



select * from customers order by customername asc;
select * from customers order by customername desc;
select * from customers order by creditlimit desc;
select * from customers order by creditlimit asc;



select country from customers group by country;


select country , count(country) as total_number from customers group by country;
select country , count(country)  as total_number from customers group by country order by count(country) desc;


select sum(creditlimit) as total from customers;


select country , count(country) as total_number , sum(creditlimit) from customers group by country;


select distinct country from customers;



use cwpc;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES
    (1, 'Pankaj', 'Sharma'),
    (2, 'Nishant', 'Patel');
    

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (101, 1, '2023-01-15'),
    (102, 2, '2023-02-20'); 
    
select * from customers;    
select * from orders;    