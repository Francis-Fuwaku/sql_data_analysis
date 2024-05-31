
/*This SQL query retrieves job postings in the 'Business' field with available 
salary information,
listing the job title,
required skills,
average yearly salary,
country,
and location.

The 'required_skills' CTE joins skills data with job postings,
ensuring only postings with specified skills are included.
The results are ordered by descending salary
and limited to the top 10 highest paying jobs.*/


WITH required_skills AS (
  SELECT skills_job_dim.job_id,
   skills_dim.skills
  FROM skills_dim
  RIGHT JOIN skills_job_dim ON skills_job_dim.skill_id = skills_dim.skill_id
) 

SELECT job_title_short,
  required_skills.skills AS required_skill,
  salary_year_avg,
  job_country,
  job_location
FROM job_postings_fact
LEFT JOIN required_skills ON required_skills.job_id = job_postings_fact.job_id
WHERE salary_year_avg IS NOT NULL
  AND job_title_short LIKE 'Business%'
  
  AND required_skills.skills IS NOT NULL
  

ORDER BY salary_year_avg DESC
LIMIT 10;