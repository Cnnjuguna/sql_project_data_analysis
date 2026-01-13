-- CREATE TABLE january_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 1
--     LIMIT 10;

-- CREATE TABLE february_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 2
--     LIMIT 10;

-- CREATE TABLE march_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 3
--     LIMIT 10;

-- CREATE TABLE april_jobs AS
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 4
--     LIMIT 10;


-- SELECT job_posted_date
-- FROM march_jobs



-- CASE EXPRESSIONS
-- SELECT
--     COUNT(job_id) AS number_of_jobs,
--     CASE
--         WHEN job_location = 'Anywhere' THEN 'Remote'
--         WHEN job_location = 'New York' THEN 'Local'
--         ELSE 'Onsite'
--     END AS location_category
-- FROM job_postings_fact
-- WHERE
--     job_title_short = 'Data Analyst'
-- GROUP BY
--     location_category;


-- SELECT
--     job_title_short,
--     salary_year_avg,
--     CASE
--         WHEN salary_year_avg >= 200000 THEN 'HIGH'
--         WHEN salary_year_avg >= 100000 THEN 'STANDARD'
--         WHEN salary_year_avg > 0 THEN 'LOW'
--         ELSE 'Unknown'
--     END AS salary_category
-- FROM job_postings_fact
-- WHERE
--     job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
-- ORDER BY
--     salary_year_avg DESC;


