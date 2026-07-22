#COUNT FUNCTION (Aggregate function)
SELECT COUNT(*) FROM students;
-- Definition: COUNT(*) returns the total number of rows in a table, regardless of 
-- NULL values in any column.
-- Real use case: Quickly finding how many total students are enrolled — like a 
-- dashboard showing "Total Students: 5" at a glance.
SELECT COUNT(DISTINCT fname) FROM students;
-- Definition: Counts only the unique (non-repeating) values in the fname column — 
-- if two students share the same name, it's counted once.
-- Real use case: Finding how many unique first names exist in the school — useful 
-- for spotting how common name repetition is, separate from total student count.
SELECT COUNT(DISTINCT gender) FROM students;
-- Definition: Counts the number of unique gender values present in the table.
-- Real use case: Checking data diversity — e.g., confirming whether the dataset has 
-- both "Male" and "Female" entries, or just one, useful for quick data validation.
SELECT COUNT(DISTINCT class) FROM students;
-- Definition: Counts how many different class values exist across all students.
-- Real use case: Finding out how many distinct classes the school currently has 
-- students in — like "students are spread across 5 different classes."
SELECT COUNT(fname) FROM students WHERE class = 12;
-- Definition: Combines COUNT with WHERE — counts only the rows matching a condition 
-- (here, students whose class is 12).
-- Real use case: Finding how many students are enrolled in a specific class — like 
-- checking class strength for class 12 before planning seating or resources.
-- Note: your data currently has classes like 6, 7, 8, 9, 10 — none are 12, so this 
-- will return 0, which is expected behavior, not an error.
SELECT COUNT(DISTINCT school_name) FROM students;
-- Definition: Counts how many unique school names exist in the table.
-- Real use case: If this table ever stored students from multiple schools, this would 
-- confirm how many different schools are represented — useful for multi-school 
-- systems or district-level reports.


#GROUP BY KEYWORD
SELECT class FROM students GROUP BY class;
-- Definition: GROUP BY collapses rows sharing the same value into a single group — 
-- here it lists each unique class value once (similar to DISTINCT, but GROUP BY is 
-- built for pairing with aggregate functions like COUNT, SUM, AVG).
-- Real use case: Getting a list of all classes that currently have students, without 
-- duplicates — a foundational step before doing per-class calculations.
SELECT gender FROM students GROUP BY gender;
-- Definition: Same GROUP BY concept applied to gender — groups rows so each unique 
-- gender value appears once.
-- Real use case: Preparing to calculate gender-wise statistics, like counts or 
-- averages, grouped by male/female.
SELECT gender, COUNT(fname) FROM students GROUP BY gender;
-- Definition: This is where GROUP BY becomes powerful — it groups rows by gender, 
-- and COUNT(fname) then counts how many students fall into each gender group 
-- separately.
-- Real use case: A school report showing "Male: 5, Female: 2" — a gender-wise 
-- breakdown of student counts, common in demographic reports.
SELECT class, COUNT(fname) FROM students GROUP BY class;
-- Definition: Groups students by class, then counts how many students are in each 
-- class group.
-- Real use case: Class-wise strength report — like "Class 6: 1 student, Class 7: 1 
-- student, Class 8: 2 students" — helps admins see enrollment distribution across 
-- classes at a glance.
SELECT city, COUNT(id) FROM students GROUP BY city;
-- Definition: Groups students by their city, then counts how many students come from 
-- each city.
-- Real use case: Understanding geographic distribution of students — like identifying 
-- which cities send the most students to the school, useful for planning transport 
-- routes or regional outreach.