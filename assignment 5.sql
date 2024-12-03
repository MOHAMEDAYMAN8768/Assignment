SELECT * FROM employees;

SELECT emp_id, emp_name, dept_id 
FROM employees 
WHERE location = 'Cairo';


SELECT DISTINCT dept_id 
FROM employees;


CREATE TABLE students (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) DEFAULT 'Unknown',
    Address VARCHAR(255) DEFAULT 'N/A',
    City VARCHAR(255) DEFAULT 'N/A',
    Birth_Date DATE
);

DROP TABLE students;


INSERT INTO students (First_Name, Last_Name, Address, City, Birth_Date) 
VALUES ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

UPDATE students 
SET Address = 'Garden City' 
WHERE Last_Name = 'Ahmed';

BEGIN TRANSACTION;

DELETE FROM students 
WHERE City = 'Cairo';

ROLLBACK;
