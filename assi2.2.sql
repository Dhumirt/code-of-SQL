-- Step 1: Creating Tables

-- Create the database
CREATE DATABASE EmployeeManagement;

-- Use the newly created database
USE EmployeeManagement;

-- Create the Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

-- Create the Employee table with appropriate constraints
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    DOB DATE,
    HireDate DATE,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Step 2: Insert records into tables

-- Insert records into the Department table
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'Finance');

-- Insert records into the Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, DOB, HireDate, DepartmentID, Salary) VALUES
(1, 'John', 'Doe', '1985-01-15', '2020-06-01', 2, 70000.00),
(2, 'Jane', 'Smith', '1990-07-22', '2018-03-15', 1, 60000.00),
(3, 'Alice', 'Johnson', '1980-12-05', '2019-11-20', 3, 75000.00),
(4, 'Chris', 'Brown', '1995-05-30', '2021-08-10', 4, 50000.00),
(5, 'Emma', 'Wilson', '1987-09-18', '2017-01-25', 5, 80000.00);

-- Step 3: Basic Data Retrieval

-- Retrieve all employees' FirstName, LastName, and Salary
SELECT FirstName, LastName, Salary FROM Employee;

-- Retrieve employees who were hired after January 1, 2020
SELECT * FROM Employee WHERE HireDate > '2020-01-01';

-- Retrieve employees with a salary greater than 50000
SELECT * FROM Employee WHERE Salary > 50000;