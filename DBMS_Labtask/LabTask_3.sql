
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE EMPLOYEE (
    ENUM INT(4),
    FNAME VARCHAR(50),
    MNAME VARCHAR(50),
    LNAME VARCHAR(50),
    BIRTHDATE DATE,
    GENDER CHAR(50),
    SSN CHAR(50),
    JOB_TITLE VARCHAR(50),
    SALARY DECIMAL(10,2),
    HIREDATE DATE,
    TAX DECIMAL(10,2),
    DEPARTMENT VARCHAR(20)
);

INSERT INTO EMPLOYEE (ENUM, FNAME, MNAME, LNAME, BIRTHDATE, GENDER, SSN, JOB_TITLE, SALARY, HIREDATE, TAX, DEPARTMENT)
VALUES  
(9201, 'Sangeet', 'R', 'Shrama', '1965-11-08' , 'M', '11MH456633', 'Professor Computer Sci', 12009.00, '1990-12-16', 120090.00, 'Computer Sci'), 
(9202, 'Rajesh', 'D', 'Khurana', '1968-12-19', 'M', '10MH445766', 'Professor Nano Computing', 11557.00, '1991-08-08', 115570.00, 'Nano Computing'), 
(9203, 'Awaghoot', 'S', 'Rohi', '1972-08-03', 'M', '25MH778243', 'Asst. Professor Computer Sci', 10505.00, '1995-08-31', 105050.00, 'Computer Sci'), 
(9204, 'Rachana', 'P', 'Roy', '1974-04-16', 'F', '22MH908754', 'Sr. Lecturer Nano Computing', 9895.50, '1997-02-13', 98955.00, 'Nano Computing'), 
(9205, 'Rahul', 'A', 'Bajaj', '1973-07-28', 'M', '23MH982340', 'Asst. Professor Biotechnology', 10100.99, '1996-05-24', 101009.00, 'Biotechnology'), 
(9206, 'Jyotirmay', 'V', 'Kapoor', '1975-03-02', 'M', '14MH223789', 'Sr. Lecturer Biotechnology', 9250.00, '1999-04-25', 92500.00, 'Biotechnology'), 
(9207, 'Kamal', 'P', 'Gupta', '1977-06-07', 'M', '12MH895430', 'Lecturer Biotechnology', 8608.00, '1999-06-16', 86080.00, 'Biotechnology'), 
(9208, 'Vedant', 'H', 'Malhotra', '1976-10-31', 'M', '17MH567098', 'Lecturer Nano Computing', 9105.00, '1998-09-23', 91051.00, 'Nano Computing'), 
(9209, 'Preetika', 'J', 'Lamba', '1976-09-11', 'F', '19MH785634', 'Lecturer Computer Sci', 860.88, '1997-10-06', 86080.00, 'Computer Sci'), 
(9210, 'Neeta', 'S', 'Samy', '1971-01-30', 'F', '08MH781098', 'Asst. Professor Nano Computing', 10704.00, '1994-11-12', 107040.00, 'Nano Computing');

SELECT * FROM EMPLOYEE;

SELECT * 
FROM EMPLOYEE 
WHERE JOB_TITLE LIKE '%Professor%';

SELECT 
    CONCAT(
        ENUM, '\t', 
        FNAME, ' ', 
        MNAME, ' ', 
        LNAME, '\t', 
        BIRTHDATE, '\t', 
        SALARY, '\t', 
        GENDER
    ) AS EMPLOYEE_RECORD
FROM 
    EMPLOYEE;
    
SET SQL_SAFE_UPDATES = 0;


UPDATE EMPLOYEE
SET JOB_TITLE = 'New Job Title'
WHERE ENUM = 9204;

DELETE FROM EMPLOYEE
WHERE FNAME = 'Jyotirmay'
AND HIREDATE = '1999-04-25'
AND JOB_TITLE = 'Sr. Lecturer';

SELECT FNAME, SSN, JOB_TITLE, DEPARTMENT
FROM EMPLOYEE;

INSERT INTO EMPLOYEE (ENUM, FNAME, LNAME, MNAME, BIRTHDATE, SALARY, GENDER, SSN, JOB_TITLE, DEPARTMENT, HIREDATE, TAX)
VALUES  
(9211, 'Deepak', 'Lakhanpal', 'M', '1978-02-28', 120000.00, 'M', '15OR333567', 'Lecturer', 'Biotechnology', '1999-04-22', 12000.00);