CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);


CREATE TABLE Workers (
    WorkerID INT PRIMARY KEY,
    WorkerName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');


INSERT INTO Workers VALUES 
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3); 

SELECT Workers.WorkerName, Departments.DeptName
FROM Workers
INNER JOIN Departments ON Workers.DeptID = Departments.DeptID;

SELECT Workers.WorkerName, Departments.DeptName
FROM Workers
LEFT JOIN Departments ON Workers.DeptID = Departments.DeptID;

SELECT Workers.WorkerName, Departments.DeptName
FROM Workers
RIGHT JOIN Departments ON Workers.DeptID = Departments.DeptID;

SELECT Workers.WorkerName, Departments.DeptName
FROM Workers
FULL OUTER JOIN Departments ON Workers.DeptID = Departments.DeptID;

