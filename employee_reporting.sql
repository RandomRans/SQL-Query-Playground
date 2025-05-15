-- List active employees in the IT department
SELECT EmployeeID, FirstName, LastName, JobTitle
FROM Employees
WHERE Department = 'IT' AND Status = 'Active';

-- Find employees hired in the last 6 months
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
