/*
"This SQL query identifies the most frequently required skill for Business Analyst roles by 
counting the occurrence of each skill.
It joins job postings with skills data,
filtering for Business Analyst positions with available salary information.   
Results are grouped by skills and sorted in descending order of frequency,
 revealing the most sought-after skill in the Business Analyst role."
 
 */

WITH required_skills AS (
  SELECT skills_job_dim.job_id,
    skills_dim.skills
  FROM skills_dim
    RIGHT JOIN skills_job_dim ON skills_job_dim.skill_id = skills_dim.skill_id
)
SELECT 
COUNT (*) AS required_skill,
required_skills.skills,
job_title_short
FROM job_postings_fact
LEFT JOIN required_skills ON required_skills.job_id = job_postings_fact.job_id
WHERE salary_year_avg IS NOT NULL
  AND job_title_short = 'Business Analyst'
  AND required_skills.skills IS NOT NULL
  GROUP BY required_skills.skills,job_title_short
ORDER BY COUNT(*) DESC
LIMIT 5;
