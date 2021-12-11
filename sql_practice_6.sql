-- Task 1
INSERT INTO department (Dname, Dnumber) VALUES ('HR Management', 6),('Accounting and Finance',7);

-- Task 2 
INSERT INTO employee (Fname, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dnumber) VALUES
('Frau', 'Zimmerman', 565758599, '1985-07-29','101 Tree, New York, NY', 'M', 60000, null, 6),
('Atabek', 'Dummkopf', 777777777, '2001-01-01','100 Manhattan, New York, NY', 'M', 24000, 565758599, 6),
('Kalybek', 'Hartstein', 773270177, '2002-12-23','301 Rice, Texas, TX', 'M', 22000, 565758599, 6),
('Jooshbay', 'Wilkinson', 980012021, '1999-10-23','23 Bean, Los Angeles, LA', 'F', 33000, 565758599, 6),
('Shamal', 'Shamalov', 111000111, '2001-07-30','1 Manhattan, New York, NY', 'M', 50000, 565758599, 6),
('George', 'Washingtoin', 322012984, '2002-05-14','23 Gross, Texas, TX', 'M', 22000, 565758599, 6);

-- Task 3
UPDATE employee SET Salary = 28000 WHERE NOT Ssn = 565758599 AND Dnumber = 6;

-- Task 4
UPDATE employee SET Salary = 32000 WHERE Ssn = 565758599 AND Dnumber = 6;

-- Task 5
UPDATE department SET Mgr_ssn = 310202345, Mgr_start_date = '1999-02-03' WHERE Dnumber = 7;

-- Task 6
INSERT INTO employee (Fname, Lname, Ssn, Bdate, Address, Sex, Super_ssn, Dnumber) VALUES
('Karen', 'Zackaryan', 310202345, '1979-04-26','23 Chair, Texas, TX', 'M', null, 7),
('Zoya', 'Fish', 443210023, '1985-12-21','104 Tont, Texas, TX', 'F', 310202345, 7),
('Alan', 'Smith', 445315017, '1995-04-12','204 Hard, Texas, TX', 'M', 310202345, 7);

UPDATE employee SET Salary = 27000 WHERE NOT Ssn = 310202345 AND Dnumber = 7;
UPDATE employee SET Salary = 30000 WHERE Ssn = 310202345 AND Dnumber = 7;
INSERT INTO dept_locations VALUES (6, 'New York'), (7, 'Philadelphia');

-- Task 7
INSERT INTO project VALUES ('Employee recruitment', 11, 'New York', 6);

-- Task 8
INSERT INTO works_on VALUES (111000111, 11, 48),(322012984, 11, 48),(565758599,11,54.5), (773270177,11,54.5), (777777777,11,54.5);

-- Task 9
UPDATE department SET Mgr_ssn = 123456789, Mgr_start_date = '2021-11-13' WHERE Dnumber = 5;
UPDATE employee SET Super_Ssn = 888665555 WHERE Ssn = 123456789;
UPDATE employee SET Super_Ssn = 123456789 WHERE NOT Ssn = 123456789 AND Dnumber = 5;
UPDATE employee SET Salary = 40000 WHERE Ssn = 123456789;
UPDATE employee SET Salary = 30000 WHERE Ssn = 333445555;

-- Task 10
UPDATE employee SET Salary = Salary + (Salary * 0.3) WHERE Dnumber = 5;