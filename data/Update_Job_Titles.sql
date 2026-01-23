UPDATE employees
SET job_title_id =
    CASE
        -- Engineering
        WHEN department_id = 1 AND salary < 90000 THEN 1 -- Software Engineer (Junior)
        WHEN department_id = 1 AND salary BETWEEN 90000 AND 100000 THEN 2 -- Senior Software Engineer
        WHEN department_id = 1 AND salary > 100000 THEN 3 -- Engineering Manager

        -- Data
        WHEN department_id = 2 AND salary < 85000 THEN 4 -- Data Analyst (Junior)
        WHEN department_id = 2 AND salary BETWEEN 85000 AND 95000 THEN 5 -- Senior Data Analyst
        WHEN department_id = 2 AND salary > 95000 THEN 6 -- Data Manager

        -- HR
        WHEN department_id = 3 AND salary < 60000 THEN 9 -- HR Analyst
        WHEN department_id = 3 AND salary >= 60000 THEN 10 -- HR Manager

        -- Finance
        WHEN department_id = 4 AND salary < 80000 THEN 7 -- Finance Analyst
        WHEN department_id = 4 AND salary >= 80000 THEN 8 -- Finance Manager

        -- Sales
        WHEN department_id = 5 AND salary < 65000 THEN 13 -- Sales Executive
        WHEN department_id = 5 AND salary >= 65000 THEN 14 -- Sales Manager

        -- Operations
        WHEN department_id = 6 AND salary < 55000 THEN 11 -- Operations Analyst
        WHEN department_id = 6 AND salary >= 55000 THEN 12 -- Operations Manager

        ELSE 1 -- fallback
    END;
