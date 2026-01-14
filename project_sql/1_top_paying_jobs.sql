-- What are the top paying jobs?
--Identify the top highest paying  data analyst jobs
--Focuses on job postings with specified salaries [remote nulls]
--Why? Highlighting the top paying opportunities for Data Analysis, offering insights into employment
--
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    name AS company_name,
    job_posted_date
FROM
    job_postings_fact
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Engineer'
    AND job_location = 'New York'
    AND salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT
    10