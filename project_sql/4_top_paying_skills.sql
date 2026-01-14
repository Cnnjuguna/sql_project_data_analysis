--Question: What are the top skills based on salary.
--Look at the average salary associated with each skill for Data Analysis or Data Engineering.
--Focuses on roles with specified salaries, regardless of location.
--Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve on
--
SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
    -- COUNT(skills_job_dim.job_id) AS demand_count
FROM
    job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Engineer'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
    -- AND job_location = 'Anywhere'
GROUP BY
    skills
ORDER BY
    average_salary DESC
    --     demand_count DESC
LIMIT
    15;