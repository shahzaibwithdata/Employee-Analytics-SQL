CREATE DATABASE EmployeeAnalyticsDB;
GO

USE EmployeeAnalyticsDB;
GO

-- 1️⃣ Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- 2️⃣ Job Titles
CREATE TABLE job_titles (
    job_title_id INT PRIMARY KEY,
    job_title VARCHAR(50),
    job_level VARCHAR(20),
    department_id INT,
    CONSTRAINT fk_job_department FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 3️⃣ Employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    hire_date DATE,
    job_title_id INT,
    CONSTRAINT fk_employee_department FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT fk_employee_job FOREIGN KEY (job_title_id) REFERENCES job_titles(job_title_id)
);
