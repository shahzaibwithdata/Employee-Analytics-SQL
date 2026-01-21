-- Employee seniority based on hire date

SELECT
    name,
    hire_date,
    DATEDIFF(YEAR, hire_date, GETDATE()) AS years_of_experience
FROM employees
ORDER BY years_of_experience DESC;
