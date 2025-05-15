-- Subquery to find departments with more than 10 employees
SELECT Department
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 10;

-- Create a view for active patient appointments
CREATE VIEW ActiveAppointments AS
SELECT PatientID, AppointmentDate, Clinic
FROM Appointments
WHERE Status = 'Scheduled';
