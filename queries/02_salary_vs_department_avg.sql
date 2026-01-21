-- Compare employee salary with department average

SELECT
    e.name,
    d.department_name,
    e.salary,
    AVG(e.salary) OVER (
        PARTITION BY d.department_name
    ) AS department_avg_salary,
    e.salary - AVG(e.salary) OVER (
        PARTITION BY d.department_name
    ) AS salary_difference
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name, e.salary DESC;
