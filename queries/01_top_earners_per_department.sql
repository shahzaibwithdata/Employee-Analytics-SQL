-- Top earners per department using RANK()

SELECT
    d.department_name,
    e.name,
    e.salary,
    RANK() OVER (
        PARTITION BY d.department_name
        ORDER BY e.salary DESC
    ) AS salary_rank
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;
