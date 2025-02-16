SELECT 
    job_postings.job_id,
    job_postings.job_location,
    job_postings.job_title_short
FROM job_postings_fact AS job_postings
INNER JOIN skills_job_dim AS skills_to_job 
    ON job_postings.job_id = skills_to_job.job_id
WHERE job_postings.job_title_short = 'Data Analyst'
GROUP BY job_postings.job_id;