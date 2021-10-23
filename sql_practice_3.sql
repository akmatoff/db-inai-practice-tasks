-- Task 1 
SELECT COUNT(*) FROM Departments; 

-- Task 2 
SELECT SUM(Salary) FROM employee;

-- Task 3 

-- Task 4 
SELECT MIN(Salary) FROM employee;

-- Task 5 
SELECT MAX(Salary) FROM employee
INNER JOIN Departments
on Departments.id = employee.departmentid
WHERE departments.name = 'Adminstration'

-- Task 6 
SELECT AVG(Salary) FROM employee 
INNER JOIN Departments
ON Departments.id = employee.departmentid
WHERE Departments.name = 'Research';

-- Task 7 
SELECT MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary, SUM(salary) AS SalarySum, AVG(Salary) AS AverageSalary
FROM employee;

-- Task 8 
SELECT MAX(Salary) - MIN(SALARY) AS Difference
FROM employee;

-- Task 9 
SELECT MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary, SUM(salary) AS SalarySum, AVG(Salary) AS AverageSalary
FROM employee
WHERE gender = 'female';

-- Task 10
SELECT AVG(Salary) FROM employee
INNER JOIN Departments
ON Departments.id = employee.departmentID 
WHERE Departments.name != 'Administration';

-- Task 11
SELECT * FROM departments
INNER JOIN employee 
ON employee.departmentId = departments.id 
GROUP BY departments.name
HAVING (
	SELECT COUNT(*) FROM employee 
  	
)
