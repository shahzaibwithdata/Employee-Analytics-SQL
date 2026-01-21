-- Hiring trend analysis by year

SELECT
    YEAR(hire_date) AS hire_year,
    COUNT(*) AS employees_hired
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year;
