use employee;

#1. Write a SQL query to create an Employee table.
#   Employee(EmpID, EmpFirstName, EmpLastName, PhoneNo, EmailID, DeptID, Jobs,
#   JoiningDate)

CREATE TABLE Chetan_employee (
    EmpID INT PRIMARY KEY,
    EmpFirstName VARCHAR(50),
    EmpLastName VARCHAR(50),
    PhoneNo VARCHAR(15),
    EmailID VARCHAR(100),
    DeptID INT,
    Jobs VARCHAR(100),
    JoiningDate DATE
);

-- changing datatype of DeptID
Alter table Chetan_employee modify column DeptID varchar(10);


#2. Write a SQL query to create an EmpDepartment table.
#   EmpDepartment(DeptID, DeptName)

CREATE TABLE EmpDepartment (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- changing datatype of DeptID
Alter table EmpDepartment modify column DeptID varchar(10);

-- Insert data into EmpDepartment table
INSERT INTO EmpDepartment (DeptID, DeptName)
VALUES
    ('E-101', 'Human Resources'),
    ('E-102', 'Information Technology'),
    ('E-103', 'Finance'),
    ('E-104', 'Design'),
    ('E-105', 'Marketing'),
    ('E-106', 'Operations'),
    ('E-107', 'Sales'),
    ('E-108', 'Customer Support');

select * from EmpDepartment;

#3. Write a SQL query to create an EmpSalary table.
#   EmpSalary(EmpID, Salary, IsPermanent)

CREATE TABLE EmpSalary (
    EmpID INT PRIMARY KEY,
    Salary DECIMAL(10, 2),
    IsPermanent BIT
);

-- Insert data into EmpSalary
-- Insert data into EmpSalary table
INSERT INTO EmpSalary (EmpID, Salary, IsPermanent)
VALUES
    (101, 5000.00, 1),
    (102, 3200.00, 1),
    (103, 2800.00, 1),
    (104, 5500.00, 1),
    (105, 4500.00, 1),
    (106, 3200.00, 1),
    (107, 4200.00, 1),
    (108, 2800.00, 1),
    (109, 6000.00, 1),
    (110, 3200.00, 1);
    
select * from EmpSalary;


-- Insert data into Chetan_Employee table
INSERT INTO Chetan_Employee (EmpID, EmpFirstName, EmpLastName, PhoneNo, EmailID, DeptID, Jobs, JoiningDate)
VALUES
    (101, 'Sagar', 'Verma', '1234567890', 'sagar@gmail.com', 'E-101', 'Manager', '2022-01-15'),
    (102, 'John', 'Doe', '9876543210', 'john@gmail.com', 'E-102', 'Developer', '2021-08-20'),
    (103, 'Neha', 'Sharma', '4567894910', 'neha@gmail.com', 'E-103', 'Analyst', '2020-09-30'),
    (104, 'Shobhna', 'Singh', '7890123456', 'shobhna@gmail.com', 'E-104', 'Designer', '2022-03-05'),
    (105, 'Amit', 'Chopra', '6543210987', 'amit@yahoo.com', 'E-101', 'Manager', '2021-12-10'),
    (106, 'Mallika', 'Gupta', '2345678901', 'mallika@gmail.com', 'E-102', 'Developer', '2022-05-18'),
    (107, 'Rahul', 'Verma', '3456789012', 'rahul@hotmail.com', 'E-104', 'Designer', '2020-11-25'),
    (108, 'Sahil', 'Kumar', '8765432109', 'sahil@gmail.com', 'E-103', 'Analyst', '2022-02-28'),
    (109, 'Neha', 'Verma', '4567894910', 'neha@gmail.com', 'E-105', 'Manager', '2022-07-15'),
    (110, 'Allison', 'Hall', '7890123456', 'allison@gmail.com', 'E-102', 'Developer', '2023-01-12');

select * from Chetan_employee;

-- Answer the following quesIons using SQL queries.

-- 1. Select the detail of the employee whose FirstName start with SA and end with R. (EG:
-- Sagar). Display full name of employee.
SELECT EmpFirstName, EmpLastName
FROM Chetan_employee
WHERE EmpFirstName LIKE 'SA%R';

-- 2. How many permanent candidates take salary less than 3000.
SELECT COUNT(*)
FROM EmpSalary
WHERE IsPermanent = 1 AND Salary < 3000;

-- 3. Select the name of the employee whose name's 2nd character is 'H' and last character is
-- a. (Eg: Shobhna). Display full name of employee.
SELECT EmpFirstName, EmpLastName
FROM Chetan_employee
WHERE SUBSTRING(EmpFirstName, 2, 1) = 'H' AND RIGHT(EmpFirstName, 1) = 'a';

-- 4. Select the detail of employee whose emailId is in gmail.
SELECT *
FROM Chetan_employee
WHERE EmailID LIKE '%@gmail.com';

-- 5. Change the Employee name from NEHA to NEHA VERMA whose EMPID is 103 and also
-- change Contact 4567894910.
UPDATE Chetan_employee
SET EmpFirstName = 'NEHA VERMA', PhoneNo = '4567894910'
WHERE EmpID = 103;

select * from Chetan_employee;

-- 6. Select the details of the employee who work either for department E-104 or E-102.
SELECT *
FROM Chetan_employee
WHERE DeptID IN ('E-102', 'E-104');

-- 7. List the details of the emps in desc order of the Dptnos and asc of Jobs?
SELECT *
FROM Chetan_employee
ORDER BY DeptID DESC, Jobs ASC;

-- 8. List the emps whose Salary is five-digit number ending with Zero.
SELECT *
FROM EmpSalary
WHERE Salary % 10 = 0;

-- 9. List the emps in the asc order of DesignaIons of those joined after the second half of
-- 2000.
SELECT EmpFirstName, EmpLastName, Jobs
FROM Chetan_employee
WHERE YEAR(JoiningDate) > 2000
ORDER BY Jobs ASC;

-- 10. List the emps whose names having a character set ‘ll’ together.
SELECT EmpFirstName, EmpLastName
FROM Chetan_employee
WHERE EmpFirstName LIKE '%ll%' OR EmpLastName LIKE '%ll%';






