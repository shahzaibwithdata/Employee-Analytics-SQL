-- Salary compression analysis within departments

SELECT
    d.department_name,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary,
    MAX(e.salary) - MIN(e.salary) AS salary_gap
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY salary_gap ASC;
