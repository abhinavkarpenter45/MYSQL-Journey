#Alias Concept 
SELECT fname AS Student_Name FROM students;
-- Definition: AS creates a temporary, renamed label for a column (or table) in the query's 
-- output — it doesn't change the actual column name in the database, only how it appears 
-- in results.
-- Real use case: A report or app might need friendlier column headers — instead of showing 
-- raw "fname" to an end user, the query output can show "Student_Name" instead, without 
-- ever touching the real table structure.
SELECT S.fname FROM students AS S;
-- Definition: Aliasing a table (students AS S) lets you refer to that table using a 
-- short nickname instead of typing its full name every time — here S.fname means 
-- "fname column from the students table."
-- Real use case: Becomes essential once you JOIN multiple tables together (e.g., students 
-- and classes) — short aliases like S and C make long queries much shorter and easier to 
-- read than repeating full table names everywhere.


#WHERE Clause
SELECT fname FROM students WHERE id = 5;
-- Definition: Filters results to only rows matching the condition — here, only the 
-- student whose id equals 5.
-- Real use case: Looking up one specific student's name by their known ID, like pulling 
-- up a single record instead of scrolling the whole table.
SELECT fname, lname, class FROM students WHERE id = 2
-- Definition: Same WHERE filtering, but returning multiple selected columns (fname, 
-- lname, class) for the one matching row.
-- Real use case: A teacher searching for a specific student's full name and class in one 
-- go — like checking "who is roll ID 2 and which class are they in."
SELECT fname, lname, class FROM students WHERE id = 11
-- Definition: Same query structure, but filtering for id = 11.
-- Real use case: Demonstrates that WHERE simply returns whatever matches — if no student 
-- has id 11, the query runs successfully but returns zero rows (empty result), not an error.
SELECT fname, lname, class FROM students WHERE id = 19
-- Definition: Same as above, filtering for id = 19.
-- Real use case: Same behavior — no error, just an empty result if no matching id exists.