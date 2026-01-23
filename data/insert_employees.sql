USE EmployeeAnalyticsDB;
GO

INSERT INTO employees (employee_id, name, department_id, salary, hire_date)
VALUES
-- Engineering (4 employees)
(101, 'Ali Khan', 1, 95000, '2015-03-10'),
(102, 'Sara Ahmed', 1, 88000, '2018-07-21'),
(103, 'Omar Farooq', 1, 78000, '2021-01-15'),
(104, 'Hina Tariq', 1, 105000, '2016-11-05'),

-- Data (4 employees)
(105, 'Adil Javed', 2, 90000, '2017-04-23'),
(106, 'Fatima Noor', 2, 82000, '2019-09-12'),
(107, 'Zain Ali', 2, 75000, '2022-02-18'),
(108, 'Sadia Anwar', 2, 97000, '2014-08-12'),

-- HR (3 employees)
(109, 'Maryam Saeed', 3, 60000, '2018-06-30'),
(110, 'Bilal Qureshi', 3, 58000, '2020-08-15'),
(111, 'Ayesha Rafiq', 3, 62000, '2016-12-01'),

-- Finance (3 employees)
(112, 'Ahmed Sheikh', 4, 85000, '2017-03-20'),
(113, 'Nadia Khan', 4, 78000, '2019-05-18'),
(114, 'Usman Tariq', 4, 72000, '2021-10-05'),

-- Sales (3 employees)
(115, 'Sana Malik', 5, 65000, '2018-09-22'),
(116, 'Haris Ahmed', 5, 70000, '2016-01-14'),
(117, 'Iqra Shah', 5, 62000, '2022-07-10'),

-- Operations (3 employees)
(118, 'Imran Raza', 6, 55000, '2015-05-19'),
(119, 'Komal Hassan', 6, 50000, '2019-11-03'),
(120, 'Fawad Iqbal', 6, 58000, '2021-04-28'),

-- Extra employees to reach 25
(121, 'Tariq Jamil', 2, 88000, '2016-02-08'),
(122, 'Rimsha Ali', 3, 61000, '2021-12-22'),
(123, 'Shahid Raza', 4, 80000, '2015-10-11'),
(124, 'Huma Aslam', 5, 67000, '2017-07-27'),
(125, 'Asad Iqbal', 6, 56000, '2020-03-17');
