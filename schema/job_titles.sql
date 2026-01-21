CREATE TABLE job_titles (
    job_title_id INT IDENTITY(1,1) PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    job_level VARCHAR(50) NOT NULL
);
