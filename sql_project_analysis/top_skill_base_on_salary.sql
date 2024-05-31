WITH required_skills AS (
  SELECT skills_job_dim.job_id,
    skills_dim.skills
  FROM skills_dim
    RIGHT JOIN skills_job_dim ON skills_job_dim.skill_id = skills_dim.skill_id
)
SELECT 
  required_skills.skills,
ROUND(AVG(salary_year_avg),2)AS average_salary
FROM job_postings_fact
  LEFT JOIN required_skills ON required_skills.job_id = job_postings_fact.job_id
WHERE salary_year_avg IS NOT NULL
  AND job_title_short = 'Business Analyst'
  AND required_skills.skills IS NOT NULL
GROUP BY required_skills.skills
ORDER BY average_salary DESC
