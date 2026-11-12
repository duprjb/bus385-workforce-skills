
-- BUS 385: Career Skill Gap Summary
-- Uses 50 synthetic respondents
-- Job requirements are illustrative test values

SELECT
    j.RoleName,
    COUNT(DISTINCT e.EmployeeID) AS Respondents,
    ROUND(
        AVG(
            GREATEST(
                r.RequiredProficiency - es.ProficiencyLevel,
                0
            )
        ), 2
    ) AS AvgSkillGap,
    COUNT(*) FILTER (
        WHERE es.ProficiencyLevel < r.RequiredProficiency
    ) AS SkillsBelowTarget
FROM Employee e
JOIN JobRole j
    ON e.CurrentRoleID = j.RoleID
JOIN RoleSkillRequirement r
    ON j.RoleID = r.RoleID
JOIN EmployeeSkill es
    ON e.EmployeeID = es.EmployeeID
    AND r.SkillID = es.SkillID
GROUP BY j.RoleID, j.RoleName
ORDER BY AvgSkillGap DESC;
