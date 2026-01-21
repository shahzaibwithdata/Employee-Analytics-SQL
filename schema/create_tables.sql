CREATE DATABASE EmployeeAnalyticsDB;
GO

USE EmployeeAnalyticsDB;
GO

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    salary INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
