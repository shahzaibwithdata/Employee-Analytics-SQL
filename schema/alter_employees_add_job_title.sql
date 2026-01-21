ALTER TABLE employees
ADD job_title_id INT;

ALTER TABLE employees
ADD CONSTRAINT fk_employee_job
FOREIGN KEY (job_title_id)
REFERENCES job_titles(job_title_id);
