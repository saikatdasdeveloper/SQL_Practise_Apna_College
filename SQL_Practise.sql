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