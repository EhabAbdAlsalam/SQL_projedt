CREATE TABLE january_job AS  
    SELECT * FROM job_postings_fact  
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1  
    LIMIT 10;

CREATE TABLE february_job AS  
    SELECT * FROM job_postings_fact  
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2  
    LIMIT 10;

CREATE TABLE march_job AS  
    SELECT * FROM job_postings_fact  
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3  
    LIMIT 10;

SELECT job_posted_date
FROM march_job
LIMIT 10;