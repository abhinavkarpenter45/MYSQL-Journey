CREATE DATABASE school_db;
-- Definition: Creates a new, empty database container that will hold all your tables.
-- Real use case: A school management system needs its own database to store students, 
-- teachers, classes, and grades separately from other systems like a library database.


USE school_db;
-- Definition: Selects a database to work with, so all following commands run inside it.
-- Real use case: If a MySQL server hosts multiple databases (school_db, library_db, hospital_db), 
-- USE tells MySQL exactly which one you're currently working in.


SELECT DATABASE();
-- Definition: Returns the name of the database currently in use.
-- Real use case: Helpful when switching between multiple databases during a session, 
-- to confirm you're not accidentally running a query on the wrong one.


#TABLE CREATION WITH PRIMARY KEY & AUTO_INCREMENT CONCEPT
CREATE TABLE students(
id INT PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL
);
-- Definition: PRIMARY KEY uniquely identifies each row (no duplicates, no NULLs allowed). 
-- AUTO_INCREMENT automatically generates the next number for each new row, so you never 
-- have to manually assign an ID.
-- Real use case: In a student database, every student needs a unique ID (like a roll number 
-- or admission number) that's auto-generated at enrollment — for example, student #1, #2, #3 — 
-- so no two students accidentally get the same ID.


DESC students;
-- Definition: Shows the structure of a table — column names, data types, whether NULL is 
-- allowed, key type, and default values.
-- Real use case: Useful when you forget a table's exact column names or types, or when 
-- checking a teammate's table structure before writing a query against it.