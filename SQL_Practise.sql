CREATE database College;
USE College;
CREATE TABLE students (
roll_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO students (roll_no,name,marks,grade,city) VALUES 
(101,"Anil",78,"C","Pune"),
(102,"Bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhruv",96,"A","Delhi"),
(105,"Emanuel",12,"F","Delhi"),
(106,"Farah",85,"B","Delhi");

SELECT DISTINCT city FROM students;

-- WHERE Clause
SELECT * FROM students WHERE city="Mumbai";

SELECT * FROM students WHERE marks > 70;
 
-- Operators
SELECT * FROM students WHERE marks+10 > 100;

-- Comparator
SELECT * FROM students WHERE city != "Delhi";

-- Logical
-- AND
SELECT * FROM students WHERE marks > 80 AND city = "Mumbai";
-- OR
SELECT * FROM students WHERE marks > 90 OR city = "Mumbai";
-- BETWEEN
SELECT * FROM students WHERE marks BETWEEN 80 AND 90;
SELECT * FROM students WHERE marks BETWEEN 80 AND 90 AND city = "Delhi";
-- IN 
SELECT * FROM students WHERE city IN ("Delhi", "Pune");
-- NOT IN
SELECT * FROM students WHERE city NOT IN ("Delhi", "Pune");

-- LIMIT CLAUSE
SELECT * FROM students LIMIT 3;

-- ORDER BY (SORT)
SELECT * FROM students ORDER BY marks DESC LIMIT 3;
SELECT * FROM students WHERE city = "Mumbai"  ORDER BY marks DESC LIMIT 3;
SELECT * FROM students ORDER BY marks ASC LIMIT 3;
SELECT * FROM students ORDER BY marks DESC;

-- Aggregate Functions
-- MAX()
SELECT max(marks) FROM students ;
-- AVG()
SELECT AVG(marks) FROM students;

-- GROUP BY
SELECT city, COUNT(name) FROM students GROUP BY city;





 