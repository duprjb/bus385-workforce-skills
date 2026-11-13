# Data Quality Validation Results

## BUS 385 – Workforce Skills Database

### Dataset Description

The PostgreSQL database contains 50 synthetic survey respondents, each with 11 skill proficiency ratings, producing 550 skill-rating records.

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
