-- Get upcoming patient appointments for July
SELECT PatientName, AppointmentDate, Clinic
FROM Appointments
WHERE AppointmentDate BETWEEN '2024-07-01' AND '2024-07-31'
ORDER BY AppointmentDate;

-- Count of appointments per clinic
SELECT Clinic, COUNT(*) AS TotalAppointments
FROM Appointments
GROUP BY Clinic
ORDER BY TotalAppointments DESC;
