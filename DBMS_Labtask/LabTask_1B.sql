create database student;

use student;

CREATE TABLE Student (
    ROLL_NO INT PRIMARY KEY,
    SNAME VARCHAR(30),
    MATHS INT,
    CHEM INT,
    PHY INT
);

INSERT INTO Student (ROLL_NO, SNAME, MATHS, CHEM, PHY)
VALUES
(1, 'Rahul Sharma', 78, 88, 95),
(2, 'Priya Patel', 85, 90, 82),
(3, 'Amit Kapoor', 92, 79, 88),
(4, 'Deepika Singh', 89, 94, 87),
(5, 'Vikram Yadav', 76, 85, 93);

ALTER TABLE Student
ADD COLUMN TOTAL INT;

UPDATE Student
SET TOTAL = MATHS + CHEM + PHY;

ALTER TABLE Student
ADD COLUMN AVERAGE FLOAT;

UPDATE Student
SET AVERAGE = (MATHS + CHEM + PHY) / 3.0;

