-- Task 1 
SELECT Fname, Lname FROM employee 
WHERE Salary > (
	SELECT Salary FROM employee 
  	WHERE Lname = 'Wong'
)

-- Task 2 
SELECT fname, lname FROM employee 
WHERE departmentid = (
	SELECT id FROM Departments
  	WHERE name = 'Resarch'
)

-- Task 3 
SELECT fname, lname FROM employee 
WHERE positionID = (
	SELECT positionID FROM positions 
  	WHERE employee.positionID = positions.ID
  	AND position.name = 'Manager'
)

-- Task 4 
SELECT fname, lname, salary FROM employee 
WHERE Salary > (
	SELECT AVG(Salary) FROM employee
)

-- Task 5 
SELECT fname, lname, salary FROM employee 
WHERE salary = (
	SELECT MIN(Salary) FROM employee 
  	WHERE departmentID = (
    	SELECT id FROM Departments 
      	WHERE employee.departmentID = departments.ID
    )
)

-- Task 6 
SELECT fname, lname, salary FROM employee 
WHERE Salary > (
	SELECT AVG(Salary) FROM employee
) AND departmentID = (
	SELECT id FROM Departments 
  	WHERE departments.name = 'Administration'
)

-- Task 7 
SELECT Fname, lname, salary FROM employee 
WHERE Salary > (
	SELECT Salary FROM employee 
  	WHERE employee.lname = 'Wong'
)

-- Task 8 
SELECT Fname, lname FROM employee 
WHERE departmentID = (
	SELECT id FROM positions
  	WHERE employee.positionID = positions.id 
  	AND positions.name != 'Manager'
)

-- Task 9 
SELECT id, fname, lname, (
	SELECT name FROM departments 
  	WHERE employee.departmentid = departments.id
) AS DepartmentName FROM employee 

-- Task 10
SELECT id, fname, lname, salary FROM employee 
WHERE salary > (
	SELECT AVG(salary) FROM employee 
  	WHERE departmentid = (
    	SELECT id FROM departments 
      	WHERE Departments.id = employee.departmentid
    )
)

-- Task 11 
SELECT * FROM employee LIMIT 10;

-- Task 12 
SELECT id, name FROM Departments 
WHERE (
	SELECT COUNT(*) FROM employee
  	WHERE employee.departmentid = departments.id 
) = 0

-- Task 13 
SELECT Fname, Lname FROM employee 
WHERE positionID = (
	SELECT id FROM positions
  	WHERE positions.name = 'Manager'
) AND 
departmentID = (
	SELECT id FROM departments 
  	WHERE departments.city = 'Houston'
)
