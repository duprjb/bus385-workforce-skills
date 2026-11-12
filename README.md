# Workforce Skills Database for AI Reskilling Analytics

## BUS 385 – Business Data Management
Farmingdale State College

Group Members:
- Justin Duprez
- Shun Yat Chan
- Nicholas Aufiero

## Research Question
How can a relational database identify skill gaps between students' current abilities and skills required for AI-related careers?

## Project Overview
This project uses PostgreSQL to compare respondents' skill ratings with target career requirements and identify potential training needs.

## Current Data
- 50 synthetic survey respondents
- 11 skills
- 550 proficiency ratings
- 4 target career roles
- 24 illustrative job-role skill requirements
- 7 fictional training programs

IMPORTANT: The current data is simulated and is used for database development and testing. It is not real survey research. Job requirements are not yet validated against O*NET.

## Database Setup
1. Install and start PostgreSQL.
2. Create a new database named workforce_skills.
3. Restore workforce_skills_backup.sql into the empty database using psql.
4. Run the numbered SQL query files to reproduce the test analyses.

## SQL Files
01_skill_gap_analysis.sql – Individual skill gaps

02_training_recommendations.sql – Training recommendations

03_career_gap_summary.sql – Career-level comparisons

04_most_missing_skills.sql – Most frequent skill gaps

05_validation_queries.sql – Database quality checks

## Project Status
The synthetic database prototype and initial SQL queries have been developed. O*NET validation, final data sourcing, experimental comparisons, and final reporting are still in progress.
