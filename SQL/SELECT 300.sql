SELECT 
    job_title_short AS title_short,
    job_location AS location,
    job_posted_date AS post_date, -- Fixed alias conflict
    salary_year_avg AS year_avg_salary, 
    salary_hour_avg AS hour_avg_salary,
    EXTRACT(YEAR FROM job_posted_date) AS year_extract, -- Fixed typo
    EXTRACT(HOUR FROM job_posted_date) AS hour_extract, -- Fixed typo
    CASE 
        WHEN EXTRACT(HOUR FROM job_posted_date) = 8 THEN 'Yes'
        ELSE 'No'
    END AS is_8_hour -- Fixed alias issue
FROM job_postings_fact
WHERE job_location LIKE 'Mexico' -- Fixed filtering
GROUP BY job_title_short, job_location, job_posted_date, salary_year_avg, salary_hour_avg;