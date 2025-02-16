SELECT 
    job_title_short AS title_short, 
    job_location AS location,
    job_posted_date AS post_date,
    salary_year_avg AS year_avg_salary, 
    salary_hour_avg AS hour_avg_salary,
    EXTRACT(YEAR FROM job_posted_date) AS year_extract,
    EXTRACT(HOUR FROM job_posted_date) AS hour_extract, 
    CASE 
        WHEN EXTRACT(HOUR FROM job_posted_date) = 17 THEN 'Yes'
        ELSE 'No'
    END AS is_17_hour 
FROM job_postings_fact
LIMIT 1000;