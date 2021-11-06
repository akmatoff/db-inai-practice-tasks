-- Task 1 
SELECT d.Dnumber, d.dname, dl.dlocation
FROM Department d 
INNER JOIN DEPT_LOCATIONS dl
ON d.Dnumber = dl.Dnumber;

-- Task 2 
SELECT d.Dname, d.Dnumber, e.Fname, e.lname 
FROM DEPARTMENT d 
INNER JOIN EMPLOYEE e 
ON d.Dnumber = e.dnumber;

-- Task 3 
SELECT d.Dname, d.Dnumber 
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e 
ON d.Dnumber = e.dnumber
INNER JOIN DEPT_LOCATIONS dl
on d.dnumber = dl.Dnumber
WHERE dl.dlocation = 'Houston';

-- Task 4 
SELECT d.Dname, COUNT(*) AS EmployeeCount
FROM DEPARTMENT d 
INNER JOIN EMPLOYEE e 
ON d.Dnumber = e.dnumber
GROUP BY d.DName;

-- Task 5 
SELECT d.Dname, dl.Dlocation, e.Fname, e.lname
FROM DEPARTMENT d 
INNER JOIN DEPT_LOCATIONS dl 
ON d.dnumber = dl.dnumber
INNER JOIN EMPLOYEE e 
ON e.ssn = d.Mgr_ssn
GROUP BY d.Dname;

-- Task 6 
SELECT d.Dname, e.Fname, e.Lname, e.salary - (
	SELECT MIN(Salary) FROM EMPLOYEE
) AS SalaryDifference
FROM DEPARTMENT d 
INNER JOIN EMPLOYEE e 
ON d.Dnumber = e.dnumber
GROUP BY e.Ssn;

-- Task 7 
SELECT p.Pname, e.Fname, e.Lname, wo.hours 
FROM WORKS_ON wo
INNER JOIN PROJECT p 
ON p.Pnumber = wo.Pno
INNER JOIN DEPARTMENT d
ON d.Dnumber = p.Dnum
INNER JOIN EMPLOYEE e 
ON e.dnumber = d.dnumber
GROUP BY wo.Essn;

-- Task 8 
SELECT d.Dname, p.Pname, wo.Hours
FROM DEPARTMENT d
INNER JOIN PROJECT p 
ON d.dnumber = p.dnum
INNER JOIN WORKS_ON wo 
ON p.Pnumber = wo.Pno
INNER JOIN DEPT_LOCATIONS dl 
ON d.Dnumber = dl.Dnumber
WHERE dl.Dlocation = 'Houston'
GROUP BY d.Dnumber;

-- Task 9 
SELECT d.Dname, e.Fname, e.Lname, dp.Dependent_name
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e 
ON d.Dnumber = e.dnumber
LEFT JOIN DEPENDENT dp 
ON dp.Essn = e.ssn
WHERE d.Mgr_ssn = e.Ssn
GROUP BY dp.Essn;

-- Task 10
SELECT e.lname, e.fname, p.Pname, SUM(wo.Hours) AS HoursSum 
FROM EMPLOYEE e 
INNER JOIN DEPARTMENT d 
ON d.Dnumber = e.dnumber
INNER JOIN PROJECT p 
ON d.Dnumber = p.dnum
INNER JOIN WORKS_ON wo 
ON wo.Pno = p.Pnumber
WHERE e.Fname = 'Franklin' AND e.lname = 'Wong'
