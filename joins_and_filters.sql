-- Join employees to their managers
SELECT e.FirstName AS Employee, e.LastName, m.FirstName AS Manager
FROM Employees e
JOIN Employees m ON e.ManagerID = m.EmployeeID;

-- Find users who have not logged in during the past 30 days
SELECT u.Username, l.LastLogin
FROM Users u
LEFT JOIN LoginLogs l ON u.UserID = l.UserID
WHERE l.LastLogin < DATE_SUB(CURDATE(), INTERVAL 30 DAY)
   OR l.LastLogin IS NULL;
