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
INSERT INTO employee(Fname, Lname, BirthDate, Salary, DepartmentID, Gender) VALUES ('Tester', 'Tester', '20/10/1999', 28000, 4, 'female');
