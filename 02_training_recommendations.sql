
-- BUS 385: Training Recommendations
-- Synthetic test data and illustrative requirements
-- Shows training for skills below the target level

SELECT
    e.EmployeeID,
    j.RoleName,
    s.SkillName,
    es.ProficiencyLevel AS CurrentLevel,
    r.RequiredProficiency AS RequiredLevel,
    r.RequiredProficiency - es.ProficiencyLevel AS SkillGap,
    t.TrainingName,
    t.Hours,
    t.EstimatedCost
FROM Employee e
JOIN JobRole j
    ON e.CurrentRoleID = j.RoleID
JOIN RoleSkillRequirement r
    ON j.RoleID = r.RoleID
JOIN Skill s
    ON r.SkillID = s.SkillID
JOIN EmployeeSkill es
    ON e.EmployeeID = es.EmployeeID
    AND r.SkillID = es.SkillID
LEFT JOIN TrainingProgram t
    ON s.SkillID = t.SkillID
WHERE e.EmployeeID = 'R001'
    AND es.ProficiencyLevel < r.RequiredProficiency
ORDER BY SkillGap DESC;
