#DISTINCT Clause
SELECT DISTINCT school_name FROM students;
-- Definition: DISTINCT removes duplicate values from the result, showing each unique 
-- value only once.
-- Real use case: Finding out how many different schools exist in the records without 
-- seeing the same school name repeated for every student who attends it.
SELECT DISTINCT class FROM students;
-- Definition: Same DISTINCT behavior, applied to the class column.
-- Real use case: Quickly listing which unique classes exist in the school (e.g., 6, 7, 
-- 8, 9, 10) without scrolling through every single student row.
SELECT DISTINCT fname, school_name FROM students;
-- Definition: DISTINCT here considers the combination of both columns together — a row 
-- is only removed if the entire fname + school_name pair matches another row exactly.
-- Real use case: Useful when checking unique name-school combinations — two students 
-- can share a first name, but this shows each unique pairing rather than collapsing 
-- names that happen to repeat.
SELECT DISTINCT school_name, name FROM students;
-- Definition: Same multi-column DISTINCT concept as above.
-- Real use case: Same intent as above — unique school-name combinations.
-- Note: your students table has "fname"/"lname" columns, not "name" — this query will 
-- error unless changed to fname (e.g., SELECT DISTINCT school_name, fname FROM students;)


#ORDER BY
SELECT * FROM students ORDER BY fname ASC;
-- Definition: ORDER BY sorts the result set by a given column. ASC (ascending) sorts 
-- from A-Z / smallest to largest — this is also the default if ASC/DESC isn't specified.
-- Real use case: Displaying a student list alphabetically by first name, like an 
-- attendance register sorted A-Z.
SELECT * FROM students ORDER BY fname DESC;
-- Definition: DESC sorts in descending order — Z-A / largest to smallest.
-- Real use case: Same alphabetical list but reversed — useful for showing "most recent" 
-- or "last" entries first depending on the column's meaning.
SELECT * FROM students ORDER BY fname ASC, class ASC;
-- Definition: Sorting by multiple columns — rows are sorted first by fname; if two 
-- students share the exact same fname, class is used as a tie-breaker to decide their order.
-- Real use case: A more organized report — like sorting a merged list of students by 
-- name first, and by class second for students who share the same name.
SELECT * FROM students ORDER BY fname DESC, class DESC;
-- Definition: Same multi-column sort, but both columns sorted in descending order.
-- Real use case: Same tie-breaking logic as above, just reversed direction for both columns.
SELECT * FROM students ORDER BY fname ASC, class DESC;
-- Definition: Each column in ORDER BY can have its own independent sort direction — 
-- here fname is ascending, but class (the tie-breaker) is descending.
-- Real use case: Useful when different columns need different sort logic — e.g., names 
-- alphabetically, but within same-named students, higher class shown before lower class.
SELECT id FROM students ORDER BY fname ASC;
-- Definition: You can ORDER BY a column that isn't even part of the SELECT list — here 
-- only id is shown, but the sort order is still determined by fname.
-- Real use case: Getting a simple sorted list of IDs (e.g., for use in another query or 
-- export) while the actual sort logic depends on a more meaningful column like name.
SELECT * FROM students ORDER BY 1 DESC;
-- Definition: Instead of naming a column, ORDER BY can reference a column by its 
-- position number in the SELECT list — "1" means "sort by the first column" (id, since 
-- it's SELECT *).
-- Real use case: A shorthand often used in quick, ad-hoc queries, though naming the 
-- actual column (ORDER BY id DESC) is generally considered clearer and safer for 
-- long-term/shared code, since column order can silently change if the table is altered.