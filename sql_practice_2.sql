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

INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Zhumabekov', 'Baidolot', 80000, '25/02/1987', 1, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Washington', 'George', 120000, '14/06/1995', 2, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Little', 'Stuart', 25000, '10/10/1992', 3, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Big', 'Smoke', 12000, '24/12/1991', 4, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Smart', 'Phone', 50000, '12/09/1989', 4, 'male');
INSERT INTO employee(Fname, LName, Salary, BirthDate, DepartmentID, Gender) VALUES ('Smartie', 'Phonie', 10000, '16/11/1990', 2, 'female');

-- Task 1 
Select REPLACE(Fname, 'o', '#') AS Fname FROM employee;

-- Task 2
SELECT Fname, LENGTH(Fname) FROM employee;

-- Task 3 
SELECT DAY(birthdate), MONTH(birthdate), YEAR(birthdate) FROM employee;

-- Task 4 
SELECT * FROM employee
ORDER BY Lname DESC;

-- Task 5 
SELECT * FROM employee 
ORDER BY Salary DESC, fname ASC;

-- Task 6 
SELECT * FROM employee 
WHERE Lname NOT IN ('John', 'Franklin');

-- Task 7 
SELECT * FROM employee 
WHERE Lname LIKE '%n';

-- Task 8 
SELECT * FROM employee 
WHERE lname LIKE '____n';

-- Task 9 
SELECT * FROM employee 
WHERE lname LIKE 'J___';

-- Task 10 
SELECT * FROM employee 
WHERE Salary * 12 > 500000;

-- Task 11 
SELECT * FROM employee 
WHERE birthdate < '01/01/1970';

-- Task 12 
-- SELECT GETDATE();
SELECT DATE('now');
