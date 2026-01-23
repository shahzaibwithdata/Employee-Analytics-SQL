Employee Analytics & HR Insights (SQL Server)

📌 Project Overview

This project analyzes employee and department data to generate meaningful HR and business insights using SQL Server.
It focuses on salary distribution, hiring trends, workforce structure, and compensation analysis using advanced SQL techniques.

🗂️ Database Schema

📁 Tables Used

departments

department_id (PK)

department_name

job_titles

job_title_id (PK)

job_title

job_level

department_id (FK)

employees

employee_id (PK)

name

department_id (FK)

job_title_id (FK)

salary

hire_date

📐 The schema follows normalization principles and enforces foreign key constraints to ensure data integrity.


🛠️ SQL Skills Demonstrated

INNER JOIN & LEFT JOIN

GROUP BY & Aggregate Functions

Subqueries

Common Table Expressions (CTEs)

Window Functions (ROW_NUMBER, RANK, LAG)

Running totals & analytical calculations

Business-focused problem solving


📈 Business Questions Answered

What is the complete employee profile including department and job role?

How many employees work in each department?

What is the average salary per department?

Who are the highest-paid employees in each department?

Which employees earn above their department’s average salary?

How are employees ranked by salary within departments?

How does salary progress as job seniority increases?


📁 Project Structure

schema/   → Table creation scripts

data/     → Data insertion scripts

queries/  → Analytical SQL queries  


🚀 How to Run

Create database:

CREATE DATABASE EmployeeAnalyticsDB;


Run scripts from:

schema/ → create tables

data/ → insert data

queries/ → execute analysis queries


👤 Author

Shahzaib Ali
