
# Business Analyst Skills Analysis

## Overview
This project focuses on analyzing the most required skills for Business Analyst positions. By querying job postings data, it identifies the top skills sought after in the field of Business Analysis.

## Features
- **SQL Query**: Utilizes SQL to extract relevant data from job postings database.
- **Skill Analysis**: Identifies and ranks the most required skills for Business Analyst roles.
- **Insightful Results**: Provides insights into the skill demands in the Business Analyst job market.

## Instructions
1. **Setup Database**: Ensure you have access to the job postings database.
2. **Run SQL Query**: Execute the provided SQL query to analyze Business Analyst skills.
3. **Review Results**: Check the output to see the top required skills for Business Analyst positions.
   
## Usage
- Clone the repository to your local machine.
- Open the SQL file and execute the query using your preferred database management tool.
- Review the results to gain insights into Business Analyst skill demands.

## Dependencies
- SQL-compatible database management system (e.g., MySQL, PostgreSQL).




# Top Required Skills for Business Analysts

This chart visualizes the top required skills for Business Analyst positions.

![Top Required Skills](/assets/most_sort_after_skill_for_business_analyst.png)

## Data Source
The data used to generate this chart is sourced from the provided dataset.

## Instructions
To generate this chart locally, run the provided Python code.

```python
import matplotlib.pyplot as plt

data = [
    {"required_skill": "312", "skills": "SQL", "job_title_short": "Business Analyst"},
    {"required_skill": "226", "skills": "Excel", "job_title_short": "Business Analyst"},
    {"required_skill": "212", "skills": "Tableau", "job_title_short": "Business Analyst"},
    {"required_skill": "143", "skills": "Python", "job_title_short": "Business Analyst"},
    {"required_skill": "139", "skills": "Power BI", "job_title_short": "Business Analyst"}
]

skills = [skill["skills"] for skill in data]
counts = [int(skill["required_skill"]) for skill in data]

plt.barh(skills, counts, color='green')
plt.xlabel('Count')
plt.ylabel('Skills')
plt.title('Top Required Skills for Business Analysts')
plt.gca().invert_yaxis()
plt.show()


## Contributing
Contributions are welcome! Feel free to fork the repository and submit pull requests to suggest improvements or additional features.

## License
This project is licensed under the [MIT License](LICENSE).

---
Feel free to customize it further based on your project specifics and preferences!