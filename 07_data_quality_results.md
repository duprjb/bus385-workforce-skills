# Data Quality Validation Results

## BUS 385 – Workforce Skills Database

### Dataset Description
This project uses a synthetic survey dataset with 50 respondents and 550 skill-proficiency ratings. O*NET occupational information serves as a reference for identifying career-related skills. The current career proficiency requirements are illustrative and have not yet been fully validated against O*NET.
The PostgreSQL database contains 50 synthetic survey respondents, each with 11 skill proficiency ratings, for a total of 550 skill-rating records.

The dataset was generated for database development and testing. It does not represent actual survey participants.

### Validation Results 

| Validation Check | Result |
|---|---|
| Total respondents | 50 |
| Missing target careers | 0 |
| Missing participant statuses | 0 |
| Missing experience values | 0 |
| Respondents with missing skill ratings | 0 |
| Duplicate respondent IDs | 0 |
| Total skill-rating records | 550 |
| Missing or invalid proficiency ratings | 0 |

### Validation Method

SQL queries using COUNT, GROUP BY, HAVING, FILTER, IS NULL, and BETWEEN were executed in PostgreSQL.

Duplicate respondents were checked using their unique respondent IDs. Missing data was evaluated across the survey fields used in the analysis, and skill proficiency ratings were checked against the project's 1–5 scale.

### Conclusion

All completed validation checks passed for the synthetic dataset. No missing values were found in the checked fields, no duplicate respondent IDs were identified, and all 550 stored proficiency ratings were within the required range.

These checks establish basic data consistency but do not validate the accuracy of real-world skill assessments or occupational requirements.

### Data Transformation Validation

An additional SQL query compared the normalized EmployeeSkill proficiency ratings against the original survey_raw data.

The query returned **0 mismatched ratings**, confirming that all matched skill ratings were transferred correctly.

This demonstrates that our synthetic survey data was successfully transformed into the relational database without changing the recorded proficiency values.

### Database Relationship and Career Requirement Validation

SQL queries were performed to verify the relationships between employees, careers, skills, and career skill requirements.

| Validation Check | Result |
|---|---|
| Invalid employee career references | 0 |
| Invalid employee or skill references | 0 |
| Invalid career skill references | 0 |
| Total career skill requirements | 24 |
| Invalid required proficiency levels | 0 |
| Business Analyst required skills | 7 |
| Data Analyst required skills | 6 |
| IT Analyst required skills | 6 |
| Project Manager required skills | 5 |

All relationship and proficiency-range validation checks passed for the synthetic database.

These checks confirm database consistency but do not establish whether the illustrative career requirements accurately reflect O*NET occupational data.    
