
-- BUS 385: Individual Skill Gap Analysis
-- Uses synthetic test data and illustrative requirements

SELECT
    e.EmployeeID,
    j.RoleName,
    s.SkillName,
    es.ProficiencyLevel AS CurrentLevel,
    r.RequiredProficiency AS RequiredLevel,
    r.RequiredProficiency - es.ProficiencyLevel AS SkillGap,
    CASE
        WHEN es.ProficiencyLevel IS NULL
            THEN 'Not Assessed'
        WHEN es.ProficiencyLevel < r.RequiredProficiency
            THEN 'Training Needed'
        ELSE 'Requirement Met'
    END AS Status
FROM Employee e
JOIN JobRole j
    ON e.CurrentRoleID = j.RoleID
JOIN RoleSkillRequirement r
    ON j.RoleID = r.RoleID
JOIN Skill s
    ON r.SkillID = s.SkillID
LEFT JOIN EmployeeSkill es
    ON e.EmployeeID = es.EmployeeID
    AND r.SkillID = es.SkillID
WHERE e.EmployeeID = 'R001'
ORDER BY r.SkillID;
