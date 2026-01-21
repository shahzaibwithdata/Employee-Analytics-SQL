CREATE TABLE salary_history (
    salary_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NULL,
    CONSTRAINT fk_salary_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);
