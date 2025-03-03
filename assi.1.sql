create database company;

use company;

create table department(
departmentId int primary key,
departmentName varchar(100) 
);

create table employee(
employeeID int primary key,
firstName varchar(50),
lastName varchar(50),
age int,
salary decimal(10,2),
departmentId int,
joinDate date,
foreign key (departmentId) references department(departmentId)
);

insert into department values (1,"purchasing");
insert into department values (2,"finance");
insert into department values (3,"marketing");

select * from department;

insert into employee (employeeId,firstName,lastName,age,salary,departmentId,joinDate) values
(1, 'John', 'Doe', 28, 60000.00, 1, '2022-01-15'),
(2, 'Jane', 'Smith', 34, 75000.00, 2, '2021-03-20'),
(3, 'Emily', 'Johnson', 45, 85000.00, 1, '2019-07-11'),
(4, 'Michael', 'Brown', 30, 50000.00, 3, '2020-05-25'),
(5, 'Sarah', 'Davis', 29, 62000.00, 2, '2022-02-10'),
(6, 'David', 'Wilson', 40, 90000.00, 1, '2018-11-05'),
(7, 'Laura', 'Martinez', 33, 70000.00, 3, '2023-01-01'),
(8, 'James', 'Garcia', 27, 55000.00, 2, '2022-09-15'),
(9, 'Jessica', 'Miller', 37, 78000.00, 1, '2017-04-22'),
(10, 'Daniel', 'Taylor', 41, 95000.00, 3, '2016-08-30');

select * from employee; 

-- Write a query to display all employees along with their department names.
select department.departmentId,department.departmentName, concat(employee.firstName,' ',employee.lastName) as Name,
 employee.salary from employee left join department on employee.departmentId = department.departmentId; 
 

 -- Write a query to calculate the average salary of employees in each department.
 select department.departmentId,department.departmentName,AVG(employee.salary) as averageSalary from employee
 left join department ON employee.departmentId = department.departmentId GROUP BY department.departmentId, department.departmentName;
 

-- Write a query to display all employees who have joined in the last 2 years.
select employee.joinDate , DATEDIFF(CURDATE(), employee.joinDate) AS NoofJoiningdays FROM Employee
where DATEDIFF(CURDATE(), employee.joiningDate)<=730;


-- Write a query to find the department with the highest number of employee.
SELECT Employee.DepartmentID, COUNT(Employee.EmployeeID) AS Total_Employee FROM Employee GROUP BY Employee.DepartmentID
ORDER BY Total_Employee DESC LIMIT 1;


-- Update the salary of employees whose age is greater than 40 by increasing it by 10%.
select employee.age, employee.salary, (((employee.salary*10)/100)+ employee.salary) as Updated_Salary 
from employee where employee.age >=40;


-- Write a query to delete all employees from the department named 'Sales'.
-- delete employees.*, department.departmentName from employees left join departments on department.departmentname='Sales';
select employee.FirstName, employee.LastName, Department.DepartmentName from Employee 
left JOIN Department ON employee.DepartmentID = Department.DepartmentID where Department.DepartmentName = 'Sales';


-- Create a view named HighEarnerEmployees that displays the EmployeeID, FirstName, LastName, and Salary of employees earning more than 100000.
create view HighEarnerEmployee AS 
select employee.employeeID, concat(employee.firstname,' ',employee.lastname) as FullName, employee.salary 
from employee where employee.salary > 60000;


-- Write a query using a common table expression (CTE) to find employees who report to the same department and have salaries greater than the average salary of that department.
WITH AvgSalaries AS (
SELECT DepartmentID, AVG(Salary) AS AvgSalary FROM Employee GROUP BY DepartmentID
) 
SELECT FirstName, LastName, Salary FROM Employee
JOIN AvgSalaries a ON employee.DepartmentID = a.DepartmentID WHERE employee.Salary > a.AvgSalary;
 