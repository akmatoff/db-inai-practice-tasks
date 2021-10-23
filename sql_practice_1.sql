-- Task 1

CREATE TABLE employee (
  id integer PRIMARY KEY AUTOINCREMENT,
  Fname varchar(60),
  Lname varchar(60),
  BirthDate date,
  Salary INTEGER,
  DepartmentID INTEGER,
  Gender varchar(20),
  FOREIGN KEY (DepartmentID) REFERENCES Departments(id)
);

CREATE TABLE Departments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name varchar(60)
);

INSERT INTO Departments(Name) VALUES ('Wow'), ('HEY'), ('NO'), ('LOL');

-- Task 2
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Zhumabekov', 'Baidolot', 80000, '25/02/1987', 1, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Washington', 'George', 120000, '14/06/1995', 2, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Little', 'Stuart', 25000, '10/10/1992', 3, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Big', 'Smoke', 12000, '24/12/1991', 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Smart', 'Phone', 50000, '12/09/1989', 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Smartie', 'Phonie', 10000, '16/11/1990', 'female');

-- Task 3
SELECT Fname + Lname AS FIO FROM employee;

-- Task 4 
SELECT Fname, Lname, Salary FROM employee
WHERE Salary IN (25000, 50000);

-- Task 5
SELECT Lname, BirthDate FROM employee;

-- Task 6
SELECT * FROM employee
WHERE Salary > 30000
AND Lname LIKE '%e%';

-- Task 7 
SELECT * FROM employee
WHERE DepartmentID != 4;

-- Task 8 
SELECT *, CASE WHEN Salary < 30000
THEN Salary + 5000
ELSE Salary
END as SalaryWithBonus
FROM employee;

-- Task 9 
SELECT * FROM employee
WHERE Gender = 'male' 
AND Salary > 25000 
AND Lname LIKE "E%";

-- Task 10
SELECT DISTINCT DepartmentID FROM employee;
