
-- BUS 385: Database Validation
-- Synthetic survey test dataset
-- Verify record counts and data quality

-- 1. Count respondents
SELECT COUNT(*) AS TotalRespondents
FROM Employee;

-- 2. Count skills
SELECT COUNT(*) AS TotalSkills
FROM Skill;

-- 3. Count proficiency ratings
SELECT COUNT(*) AS TotalSkillRatings
FROM EmployeeSkill;

-- 4. Find invalid or missing proficiency ratings
SELECT *
FROM EmployeeSkill
WHERE ProficiencyLevel IS NULL
   OR ProficiencyLevel NOT BETWEEN 1 AND 5;

-- 5. Check whether each respondent has 11 ratings
SELECT
    EmployeeID,
    COUNT(*) AS SkillCount
FROM EmployeeSkill
GROUP BY EmployeeID
HAVING COUNT(*) <> 11;

-- 6. Check for missing target career assignments
SELECT *
FROM Employee
WHERE CurrentRoleID IS NULL;

-- 7. Check job-role requirement counts
SELECT
    j.RoleName,
    COUNT(r.SkillID) AS RequiredSkills
FROM JobRole j
LEFT JOIN RoleSkillRequirement r
    ON j.RoleID = r.RoleID
GROUP BY j.RoleID, j.RoleName
ORDER BY j.RoleID;
