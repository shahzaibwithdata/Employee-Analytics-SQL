-- Employee 1 salary progression
INSERT INTO salary_history (employee_id, salary, start_date, end_date)
VALUES
(1, 45000, '2019-01-01', '2020-12-31'),
(1, 55000, '2021-01-01', NULL);

-- Employee 2 salary progression
INSERT INTO salary_history (employee_id, salary, start_date, end_date)
VALUES
(2, 40000, '2018-06-01', '2020-05-31'),
(2, 50000, '2020-06-01', '2022-12-31'),
(2, 60000, '2023-01-01', NULL);

-- Employee 3 salary progression
INSERT INTO salary_history (employee_id, salary, start_date, end_date)
VALUES
(3, 70000, '2020-03-01', '2022-03-01'),
(3, 85000, '2022-03-02', NULL);
