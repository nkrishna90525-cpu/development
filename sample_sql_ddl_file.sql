-- Sample DDL Script
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE,
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) UNIQUE
);

ALTER TABLE Employees 
ADD CONSTRAINT FK_Dept 
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
