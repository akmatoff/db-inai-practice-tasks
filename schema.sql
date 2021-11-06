DROP DATABASE IF EXISTS COMPANY;
CREATE DATABASE IF NOT EXISTS COMPANY;
USE COMPANY;

DROP TABLE IF EXISTS DEPT_LOCATIONS;
DROP TABLE IF EXISTS WORKS_ON;
DROP TABLE IF EXISTS PROJECT;
DROP TABLE IF EXISTS DEPENDENT;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS EMPLOYEE;

CREATE TABLE EMPLOYEE
(
	Fname VARCHAR(15) NOT NULL,
	Lname VARCHAR(15) NOT NULL,
	Ssn CHAR(9),
	Bdate DATE,
	Address VARCHAR(30),
	Sex CHAR CHECK(Sex='M' OR Sex='F'),
	Salary DECIMAL(10,2),
	Super_ssn CHAR(9),
	Dnumber INT NOT NULL,
	CONSTRAINT EMPPK PRIMARY KEY(Ssn)
);

INSERT INTO EMPLOYEE VALUES('John','Smith',123456789,'1965-01-09','731 Fondren, Houston, TX','M',30000,333445555,5),('Franklin','Wong',333445555,'1955-12-08','638 Voss, Houston, TX','M',40000,888665555,5),('Joyce','English',453453453,'1972-07-31','5631 Rice, Houston, TX','F',25000,333445555,5),('Ramesh','Narayan',666884444,'1962-09-15','975 Fire Oak, Humble, TX','M',38000,333445555,5),('James','Borg',888665555,'1937-11-10','450 Stone, Houston, TX','M',55000,NULL,1),('Jennifer','Wallace',987654321,'1941-06-20','291 Berry, Bellaire, TX','F',43000,888665555,4),('Ahmad','Jabbar',987987987,'1969-03-29','980 Dallas, Houston, TX','M',25000,987654321,4),('Alicia','Zelaya',999887777,'1968-01-19','3321 Castle, Spring, TX','F',25000,987654321,4);

CREATE TABLE DEPARTMENT
(
	Dname VARCHAR(15) NOT NULL,
	Dnumber INT,
	Mgr_ssn CHAR(9),
	Mgr_start_date DATE,
	CONSTRAINT DEPTPK PRIMARY KEY(Dnumber),
	UNIQUE(Dname),
	CONSTRAINT DEPTMGRFK FOREIGN KEY(Mgr_ssn) REFERENCES EMPLOYEE(Ssn) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO DEPARTMENT VALUES('Headquarters',1,888665555,'1981-06-19'),('Administration',4,987654321,'1995-01-01'),('Research',5,333445555,'1988-05-22');

CREATE TABLE DEPENDENT
(
	Essn CHAR(9),
	Dependent_name VARCHAR(15),
	Sex CHAR CHECK(Sex='M' OR Sex='F'),
	Bdate DATE,
	Relationship VARCHAR(8),
	CONSTRAINT DEPPK PRIMARY KEY(Essn, Dependent_name),
	CONSTRAINT DEPEMPFK FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO DEPENDENT VALUES(123456789,'Alice','F','1988-12-30','Daughter'),(123456789,'Elizabeth','F','1967-05-05','Spouse'),(123456789,'Michael','M','1988-01-04','Son'),(333445555,'Alice','F','1986-04-04','Daughter'),(333445555,'Joy','F','1958-05-03','Spouse'),(333445555,'Theodore','M','1983-10-25','Son'),(987654321,'Abner','M','1942-02-28','Spouse');

CREATE TABLE PROJECT
(
	Pname VARCHAR(15) NOT NULL,
	Pnumber INT,
	Plocation VARCHAR(15),
	Dnum INT NOT NULL,
	CONSTRAINT PROJPK PRIMARY KEY (Pnumber),
	UNIQUE (Pname),
	CONSTRAINT PROJDEPTFK FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO PROJECT VALUES('ProductX',1,'Bellaire',5),('ProductY',2,'Sugarland',5),('ProductZ',3,'Houston',5),('Computerization',10,'Stafford',4),('Reorganization',20,'Houston',1),('Newbenefits',30,'Stafford',4);

CREATE TABLE WORKS_ON
(
	Essn CHAR(9),
	Pno INT NOT NULL,
	Hours DECIMAL(3,1),
	CONSTRAINT WONPK PRIMARY KEY (Essn, Pno),
	CONSTRAINT WONEMPFK FOREIGN KEY(Essn) REFERENCES EMPLOYEE(Ssn) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT WONPROJFK FOREIGN KEY(Pno) REFERENCES PROJECT(Pnumber) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO WORKS_ON VALUES(123456789,1,32.5),(123456789,2,7.5),(333445555,2,10.0),(333445555,3,10.0),(333445555,10,10.0),(333445555,20,10.0),(453453453,1,20.0),(453453453,2,20.0),(666884444,3,40.0),(888665555,20,NULL),(987654321,20,15.0),(987654321,30,20.0),(987987987,10,35.0),(987987987,30,5.0),(999887777,10,10.0),(999887777,30,30.0);

CREATE TABLE DEPT_LOCATIONS
(
	Dnumber INT,
	Dlocation VARCHAR(15),
	CONSTRAINT DLPK PRIMARY KEY (Dnumber, Dlocation),
	CONSTRAINT DLDEPTFK FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO DEPT_LOCATIONS VALUES(1,'Houston'),(4,'Stafford'),(5,'Bellaire'),(5,'Houston'),(5,'Sugarland');