INSERT INTO students(id,fname,lname)
VALUES(1,"Abhinav","Karpenter");
-- Definition: Inserts a new row into a table by explicitly naming which columns you're 
-- filling and in what order.
-- Real use case: Preferred method in real applications — if the table structure changes later 
-- (a new column gets added), this query still works correctly because you're being explicit 
-- about which value goes where.

INSERT INTO students
VALUES(2,"Kanha","Suthar");
-- Definition: Inserts a row without naming columns — values are matched purely by the 
-- table's column order (id, then fname, then lname).
-- Real use case: Faster to type for quick testing, but risky in production — if someone 
-- reorders or adds a column, values could land in the wrong place.

INSERT INTO students VALUES(3,"Shivam","Rathor");
-- Definition: Same as Method 2, just written in a single line instead of multiple lines.
-- Real use case: Purely a formatting choice — useful for short inserts during quick manual 
-- data entry or testing.

INSERT INTO students VALUES(4,"Vedant","Soni"),(5,"Sunil","Carpenter"),(6,"Anil","Carpenter");
-- Definition: Inserts multiple rows in a single INSERT statement by listing several 
-- value sets separated by commas.
-- Real use case: Bulk-adding data — like importing a class list of 30 new students at once — 
-- is much faster than running 30 separate INSERT statements, since it's one trip to the database.

SELECT * FROM students;
-- Definition: Retrieves every column and every row from a table.
-- Real use case: Common for quickly inspecting a small table during development, but avoided 
-- on large production tables since pulling ALL columns and rows wastes memory and bandwidth.

SELECT name FROM students;
-- Definition: Retrieves only a specific column instead of the whole table.
-- Real use case: A school app showing just a dropdown list of student names doesn't need 
-- IDs or other data — fetching only what's needed keeps the app fast.
-- Note: your students table has "fname"/"lname", not "name" — this line will error unless 
-- you change it to SELECT fname FROM students;

SELECT id,name FROM  students;
-- Definition: Retrieves two or more specific columns instead of all of them.
-- Real use case: A report that lists student ID next to their name doesn't need every 
-- column (like address or grades) — selecting only relevant columns keeps results clean.
-- Note: same column name issue as above — should be SELECT id, fname FROM students;

SELECT * FROM students WHERE id = 4;
-- Definition: WHERE filters rows based on a condition — only rows matching the condition 
-- are returned.
-- Real use case: Looking up one specific student's full record by their ID (like searching 
-- roll number 4 in a school portal) instead of scrolling through the entire student list.