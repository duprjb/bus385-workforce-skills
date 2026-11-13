# BUS 385 – Final Team Responsibilities

**Project:** Workforce Skills Database for AI Reskilling Analytics

**Final report due:** November 22, 2026

**Research Question:** How can a relational database identify skill gaps between students' current abilities and skills required for AI-related careers?

## Project Overview

Our PostgreSQL database includes eight tables, four target careers, 11 skills, 50 synthetic survey respondents, 550 skill proficiency ratings, and 24 illustrative career skill requirements.

The remaining project work is divided into three areas: technical database design, occupational research and SQL analysis, and results/documentation.

---

## SHUN – Database Design and Technical Methodology

### Database Tasks
- [ ] Complete the final ERD showing all eight database tables.
- [ ] Label primary keys, foreign keys, and relationship cardinalities.
- [ ] Explain how the database is normalized and why Department was separated into its own table.
- [ ] Explain how respondents are identified without personal names.
- [ ] Explain how the four target careers relate to employees and required skills.
- [ ] Test restoring the database from the GitHub SQL backup on a separate setup.
- [ ] Provide screenshots of the ERD and successful database restoration.

### Written Paper
- [ ] Write the Database Design section (approximately 2–3 pages).
- [ ] Write the Technical Methodology section (approximately 2 pages).
- [ ] Explain the relationships among Employee, Department, JobRole, Skill, EmployeeSkill, and RoleSkillRequirement, along with the remaining tables.
- [ ] Include the ERD and explain database integrity constraints.

### Presentation and Demonstration
- [ ] Prepare slides explaining the database structure.
- [ ] Show the ERD.
- [ ] Demonstrate the PostgreSQL database and its tables.
- [ ] Explain the importance of primary keys, foreign keys, and normalization.

**Deliverables:** ERD, database-design explanation, methodology section, screenshots, and live database demonstration.

---

## NICHOLAS – O*NET Research and SQL Analysis

### Research Tasks
- [ ] Verify official O*NET occupations for Business Analyst, Data Analyst, IT Analyst, and Project Manager.
- [ ] Record official occupation codes and source links.
- [ ] Identify which project skills are supported by O*NET information.
- [ ] Document whether occupational information comes from skills, abilities, work activities, or technology listings.
- [ ] Explain and justify any conversion into the database's 1–5 proficiency scale.
- [ ] Review the 24 illustrative career skill requirements and identify those requiring corrections.
- [ ] Update `06_onet_skill_mapping.md`.

### Written Paper
- [ ] Write the O*NET Occupational Research section (approximately 2–3 pages).
- [ ] Contribute a Literature Review section (approximately 2–3 pages).
- [ ] Find and summarize relevant scholarly research; coordinate with the group to meet the requirement of at least eight scholarly sources.
- [ ] Explain the SQL methodology for skill-gap analysis, career comparisons, missing skills, and training recommendations.
- [ ] Explain how the SQL results address the research question.
- [ ] Supply APA 7 citations for the sources used.

### Presentation and Demonstration
- [ ] Prepare slides explaining career requirements and skill-gap calculations.
- [ ] Demonstrate the SQL skill-gap query.
- [ ] Demonstrate the training-recommendation query.
- [ ] Explain how to interpret the results and the limits of the occupational mapping.

**Deliverables:** O*NET mapping, research sources, literature review, SQL explanations, and analysis demonstration.

---

## JUSTIN – Data Validation, Results, Discussion, and Final Organization

### Database and Data Tasks
- [x] Verify the number of synthetic survey respondents.
- [x] Check missing values and duplicate respondent IDs.
- [x] Validate all 550 proficiency ratings.
- [x] Compare normalized ratings with source survey ratings.
- [x] Verify database relationships.
- [x] Validate all 24 required proficiency levels.
- [x] Document the data-quality checks on GitHub.
- [ ] Organize screenshots of PostgreSQL queries and results.
- [ ] Create charts showing skill gaps and career comparisons.
- [ ] Confirm with the professor whether synthetic data is acceptable.

### Written Paper
- [ ] Write the Results section (approximately 3–4 pages, including figures and tables).
- [ ] Write the Data Quality Validation subsection.
- [ ] Write the Discussion section (approximately 2 pages).
- [ ] Write the Limitations and Future Improvements section (approximately 1–2 pages).
- [ ] Coordinate the abstract, introduction, and conclusion with the team.
- [ ] Combine the three members' sections into one final paper.
- [ ] Check formatting, citations, references, figures, and page count.

### Presentation and Demonstration
- [ ] Prepare slides introducing the research question and project purpose.
- [ ] Present the main skill-gap findings using charts.
- [ ] Explain the validation results and dataset limitations.
- [ ] Present the conclusion and future improvements.
- [ ] Coordinate slide order and speaker transitions.

**Deliverables:** Data-quality section, results, charts, discussion, limitations, assembled report, and opening/conclusion slides.

---

## Shared Responsibilities

- [ ] Ensure the final report is 15–30 pages.
- [ ] Include at least eight scholarly sources with APA 7 references.
- [ ] Include the research question, methodology, ERD, SQL experiments, findings, discussion, and conclusion.
- [ ] Clearly identify the 50 survey respondents as synthetic.
- [ ] Do not present illustrative career requirements as verified O*NET proficiency data.
- [ ] Obtain approval for synthetic data or replace it with actual consent-based survey data.
- [ ] Follow the instructor's AI-use and disclosure requirements.
- [ ] Upload relevant project files and supporting materials to GitHub.
- [ ] Ensure all members understand the demonstration and can answer project questions.

## Internal Timeline

**November 17:** Initial assigned research and technical materials ready.

**November 19:** Each member submits their written sections, figures, and references.

**November 20:** Combine and review the report and presentation.

**November 21:** Practice the live demonstration and complete final corrections.

**November 22:** Submit the final project.

## GitHub Organization

- `TEAM_TASKS.md` – Temporary work assignments.
- `06_onet_skill_mapping.md` – O*NET research and mapping.
- `07_data_quality_results.md` – Data validation and relationship checks.
- SQL analysis files – Reproducible PostgreSQL queries.
- Database backup – SQL database recreation file.
- ERD and presentation materials – Supporting project documentation.

Delete `TEAM_TASKS.md` when all team responsibilities are completed and reviewed.
