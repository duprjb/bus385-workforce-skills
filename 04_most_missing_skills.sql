
-- BUS 385: Most Common Skill Gaps
-- Uses synthetic survey data and illustrative job requirements
-- Counts only proficiency ratings below the required level

SELECT
    s.SkillName,
    COUNT(*) FILTER (
        WHERE es.ProficiencyLevel < r.RequiredProficiency
    ) AS TimesBelowTarget,
    ROUND(
        AVG(r.RequiredProficiency - es.ProficiencyLevel)
        FILTER (
            WHERE es.ProficiencyLevel < r.RequiredProficiency
        ), 2
    ) AS AvgGapWhenBelowTarget
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
GROUP BY s.SkillID, s.SkillName
HAVING COUNT(*) FILTER (
    WHERE es.ProficiencyLevel < r.RequiredProficiency
) > 0
ORDER BY TimesBelowTarget DESC;
