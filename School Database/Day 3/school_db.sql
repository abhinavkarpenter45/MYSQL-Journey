# add new column on current table
USE school_db;
ALTER TABLE students 
ADD contact VARCHAR(10) ;
-- Definition: ALTER TABLE modifies the structure of an existing table. ADD adds a 
-- brand-new column to it, without touching existing data.
-- Real use case: A school realizes later that they also need to store each student's 
-- phone number — instead of recreating the whole table, ALTER TABLE lets them add just 
-- that one new field to the existing table.

# Update & Modify data from a table
UPDATE students 
SET contact = 7777767980
WHERE id = 4;
-- Definition: UPDATE changes existing values in a table. SET defines the new value, 
-- and WHERE limits the change to specific row(s) — without WHERE, every row would be updated.
-- Real use case: A student updates their phone number in the office — the admin runs 
-- UPDATE to change just that one student's contact info, not everyone's.
-- Note: contact was defined as VARCHAR(10) (text), but 7777767980 is written without 
-- quotes here — it should be SET contact = '7777767980' to match the column type and 
-- avoid MySQL implicitly converting it.

#Delete data from a table 
DELETE FROM students
WHERE id = 6 ;
-- Definition: DELETE removes entire row(s) from a table that match the WHERE condition. 
-- Without WHERE, it deletes every row in the table.
-- Real use case: A student leaves the school or was entered by mistake — DELETE removes 
-- their entire record from the students table permanently.

#NOT NULL & AFTER
USE school_db;
ALTER TABLE students
ADD roll_no VARCHAR(13) AFTER lname;
-- Definition: AFTER specifies exactly where a new column should appear in the table's 
-- column order — here, roll_no is placed right after lname instead of at the end.
-- Real use case: Keeps related columns grouped logically (name info together, then roll 
-- number, then contact) so the table stays readable for anyone querying or viewing it, 
-- instead of new columns just piling up at the end randomly.

# Update roll no
UPDATE students 
SET roll_no = CASE id
	WHEN 1 THEN '24ENG3CSE1001'
	WHEN 2 THEN '24ENG3CSE1002'
	WHEN 3 THEN '24ENG3CSE1003'
	WHEN 4 THEN '24ENG3CSE1004'
	WHEN 5 THEN '24ENG3CSE1005'
	WHEN 6 THEN '24ENG3CSE1006'
END;
-- Definition: CASE WHEN...THEN...END works like an if-else inside SQL — it checks each 
-- row's id and assigns a different value depending on which condition matches.
-- Real use case: Assigning custom, unique roll numbers to each student in one single 
-- query, instead of writing six separate UPDATE statements — useful for bulk-assigning 
-- codes, grades, or categories based on existing data.

#SET constraint
ALTER TABLE students 
MODIFY COLUMN roll_no VARCHAR(13) NOT NULL UNIQUE; 
-- Definition: MODIFY COLUMN changes an existing column's definition. Here it adds two 
-- constraints: NOT NULL (value must always be provided) and UNIQUE (no two rows can 
-- have the same value).
-- Real use case: Every student's roll number must exist and must be different from 
-- everyone else's — UNIQUE prevents accidentally assigning the same roll number to two 
-- students, and NOT NULL prevents leaving it blank.