-- Cumulative employee growth over time

SELECT
    hire_year,
    yearly_hires,
    SUM(yearly_hires) OVER (
        ORDER BY hire_year
    ) AS cumulative_hires
FROM (
    SELECT
        YEAR(hire_date) AS hire_year,
        COUNT(*) AS yearly_hires
    FROM employees
    GROUP BY YEAR(hire_date)
) t
ORDER BY hire_year;
