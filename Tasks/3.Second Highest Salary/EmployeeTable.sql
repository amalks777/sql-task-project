CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
EmployeeName VARCHAR(50),
Department VARCHAR(50),
Salary INT
);

INSERT INTO Employee VALUES (1, 'Aml', 'IT', 15000), (2, 'Abhi', 'HR', 10000), (3, 'AmalKS', 'IT', 20000), (4, 'Achu', 'HR', 25000);

SELECT * FROM Employee;

SELECT MAX(Salary) FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);