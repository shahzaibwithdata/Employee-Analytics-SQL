-- This query combines employees, departments, and job titles
-- It provides a complete view of each employee's role in the company

SELECT 
    e.employee_id,
    e.name AS employee_name,
    d.department_name,
    jt.job_title,
    jt.job_level,
    e.salary,
    e.hire_date
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
JOIN job_titles jt
    ON e.job_title_id = jt.job_title_id
ORDER BY d.department_name, e.salary DESC;


-- This query shows how many employees work in each department
-- Useful for workforce distribution analysis

SELECT 
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY total_employees DESC;


-- This query calculates the average salary per department
-- Helps management understand salary distribution

SELECT 
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC;


-- This query finds the highest paid employee in each department
-- Demonstrates use of subqueries for comparison

SELECT 
    e.name,
    d.department_name,
    e.salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
)
ORDER BY e.salary DESC;


-- This query finds employees who earn more than
-- the average salary of their own department

SELECT 
    e.name,
    d.department_name,
    e.salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
)
ORDER BY e.salary DESC;


-- This query calculates how long each employee
-- has worked in the company (in years)

SELECT 
    name,
    DATEDIFF(YEAR, hire_date, GETDATE()) AS years_with_company
FROM employees
ORDER BY years_with_company DESC;


-- This query ranks employees by salary within each department
-- Uses a CTE for readability and RANK() to handle salary ties

WITH salary_ranking AS (
    SELECT
        e.employee_id,
        e.name AS employee_name,
        d.department_name,
        e.salary,
        RANK() OVER (
            PARTITION BY e.department_id
            ORDER BY e.salary DESC
        ) AS salary_rank
    FROM employees e
    JOIN departments d
        ON e.department_id = d.department_id
)
SELECT *
FROM salary_ranking
WHERE salary_rank <= 3
ORDER BY department_name, salary_rank;


-- This query calculates a running total of salaries
-- within each department ordered by salary

SELECT
    e.name AS employee_name,
    d.department_name,
    e.salary,
    SUM(e.salary) OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_department_salary
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;


-- This query analyzes salary progression within each department
-- It compares an employee's salary with the previous (lower-paid) role
-- to understand compensation growth by seniority

SELECT
    e.name AS employee_name,
    d.department_name,
    jt.job_title,
    jt.job_level,
    e.salary,
    LAG(e.salary) OVER (
        PARTITION BY d.department_id
        ORDER BY e.salary
    ) AS previous_level_salary,
    e.salary - LAG(e.salary) OVER (
        PARTITION BY d.department_id
        ORDER BY e.salary
    ) AS salary_growth
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
JOIN job_titles jt
    ON e.job_title_id = jt.job_title_id
ORDER BY d.department_name, e.salary;
