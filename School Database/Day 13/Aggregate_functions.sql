ALTER TABLE students ADD marks_math INT, ADD marks_eng INT, ADD marks_hindi INT;
-- Definition: Adds three new integer columns to the table in one statement — one 
-- each for math, English, and Hindi marks.
-- Real use case: A school needs to start recording subject-wise exam scores — instead 
-- of creating a separate marks table right away, columns are added directly to track 
-- each subject's score per student.

UPDATE students 
SET marks_math = CASE id ... END,
    marks_eng = CASE id ... END,
    marks_hindi = CASE id ... END
WHERE id BETWEEN 1 AND 20;
-- Definition: BETWEEN 1 AND 20 filters rows whose id falls within that inclusive 
-- range (1, 2, 3 ... up to 20) — combined with CASE, it assigns a different mark to 
-- each subject for each specific student id.
-- Real use case: Bulk-entering exam results for a whole class range in a single query 
-- — like uploading marks for roll numbers 1 to 20 after an exam, instead of running 
-- 60 separate UPDATE statements (20 students × 3 subjects).
-- Note: your students table currently has ids up to 6 (with id 6 deleted earlier) — so 
-- WHEN 7 through WHEN 20 won't match any existing row and will just be silently 
-- ignored; no error, but no effect either unless more students were added later.

ALTER TABLE Students DROP COLUMN email, DROP COLUMN school_name;
-- Definition: DROP COLUMN permanently removes a column and all its data from a table.
-- Real use case: If email and school_name are no longer needed (e.g., the school 
-- decided not to track them, or they're moved to a separate table), dropping them 
-- keeps the table clean and avoids storing unused data.
-- Note: table name here is "student" (singular), but your actual table is "students" 
-- (plural) — this line will error with "table doesn't exist" unless corrected to 
-- ALTER TABLE students DROP COLUMN email, DROP COLUMN school_name;

# MIN FUNCTION (Aggregate function)
SELECT MIN(age) FROM students;
-- Definition: MIN() returns the smallest value in a column across all rows.
-- Real use case: Finding the youngest student's age in the school — useful for 
-- reports like "youngest enrolled student is 7 years old."

SELECT MIN(marks_math) FROM students;
SELECT MIN(marks_eng) FROM students;
SELECT MIN(marks_hindi) FROM students;
-- Definition: Same MIN() logic applied to each subject's marks.
-- Real use case: Identifying the lowest score in each subject — helps teachers 
-- spot the weakest performance area across the whole class.

SELECT id, fname, lname, marks_hindi FROM students WHERE 
marks_hindi = ( SELECT MIN(marks_hindi) FROM students);
-- Definition: A subquery — the inner SELECT finds the minimum Hindi mark first, then 
-- the outer query finds which student(s) actually have that minimum mark.
-- Real use case: Not just knowing "the lowest mark is 59," but actually identifying 
-- *which student* got it — useful for follow-up, like scheduling extra help for that 
-- student.

#MAX FUNCTION (Aggregate function)
SELECT MAX(age) FROM students;
SELECT MAX(marks_math) FROM students;
SELECT MAX(marks_eng) FROM  students;
SELECT MAX(marks_hindi) FROM students;
-- Definition: MAX() returns the largest value in a column.
-- Real use case: Finding the oldest student's age, or the highest score in each 
-- subject — like identifying the class topper's marks per subject.

SELECT id, fname, marks_math FROM students WHERE
marks_math = (SELECT MAX(marks_math) FROM students);
-- Definition: Same subquery pattern as before, but for the maximum — finds the 
-- student(s) who scored the highest in math.
-- Real use case: Identifying the top scorer in math by name, not just the score 
-- itself — useful for merit lists or recognition/rewards.

#SUM FUNCTION (Aggregate function)
SELECT SUM(marks_math) FROM students;
-- Definition: SUM() adds up all values in a numeric column.
-- Real use case: Finding the combined total math marks across all students — a 
-- building block for calculating class averages or totals in report cards.

SELECT gender, SUM(marks_eng) FROM students GROUP BY gender;
-- Definition: Combines SUM() with GROUP BY — calculates the total English marks 
-- separately for each gender group.
-- Real use case: Comparing aggregate performance between groups — like "total English 
-- marks scored by male students vs female students" for a demographic performance report.

SELECT class, COUNT(id), SUM(marks_math) FROM students GROUP BY class ORDER BY class ASC;
-- Definition: Groups students by class, then for each class shows how many students 
-- are in it (COUNT) and their combined math marks (SUM), sorted by class in ascending 
-- order.
-- Real use case: A class-wise performance summary — like a table showing "Class 6: 3 
-- students, total math marks 210" — useful for comparing which class is performing 
-- best overall in math.

#AVG FUNCTION (Aggregate function)
SELECT AVG(marks_math) FROM students;
-- Definition: AVG() calculates the mean (average) value of a numeric column.
-- Real use case: Finding the class average math score — a standard metric used in 
-- every school report card and performance analysis.

SELECT gender, AVG(marks_hindi) FROM students GROUP BY gender;
-- Definition: Combines AVG() with GROUP BY — calculates the average Hindi mark 
-- separately for each gender.
-- Real use case: Comparing average performance between male and female students in 
-- Hindi — common in educational research and school analytics.

SELECT class, COUNT(id), AVG(marks_eng) FROM students GROUP BY class ORDER BY class ASC;
-- Definition: Groups by class, showing student count and average English marks per 
-- class, sorted by class ascending.
-- Real use case: A class-wise average report — like identifying which class has the 
-- best average English performance, useful for teachers/principals reviewing subject-wise 
-- trends across grades.