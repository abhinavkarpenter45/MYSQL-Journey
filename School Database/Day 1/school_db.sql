#Database banaya
CREATE DATABASE school_db;

#DAtabase ko use krna ya us main enter krna
USE school_db;

#kese pata kare ki enter ho gye hai 
SELECT DATABASE();

#TABLE CREATION WITH PRIMARY KEY & AUTO_INCREMENT CONCEPT
CREATE TABLE students(
id INT PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL
);

#Table ko describe krna 
DESC students;
