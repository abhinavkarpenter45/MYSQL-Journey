#DEFAULT Constraunts
ALTER TABLE students 
ADD school_name VARCHAR(20) DEFAULT 'Modal School Manasa'
-- Definition: DEFAULT sets an automatic value for a column when no value is explicitly 
-- given during insertion.
-- Real use case: If every student in this database belongs to the same school, DEFAULT 
-- saves you from typing "Modal School Manasa" for every single new student — it fills in 
-- automatically unless you specify otherwise.

# ADD MULTIPLE COLUMN 
ALTER TABLE students 
ADD COLUMN class INT NOT NULL AFTER roll_no,
ADD COLUMN gender VARCHAR(10) AFTER class,
ADD COLUMN age INT AFTER gender,
ADD COLUMN city VARCHAR(30) AFTER age,
ADD COLUMN email VARCHAR(100) UNIQUE AFTER contact;
-- Definition: A single ALTER TABLE statement can add several columns at once by 
-- separating each ADD COLUMN with a comma, instead of writing a separate ALTER TABLE 
-- for each one.
-- Real use case: When a school decides to track more student details (class, gender, 
-- age, city, email) all at once, adding them together in one statement is faster and 
-- cleaner than five separate ALTER TABLE commands.
-- Note: email is UNIQUE — meaning no two students can share the same email address, 
-- which makes sense since email is often used for login/communication.

UPDATE students
SET 
class = CASE id
	WHEN 1 THEN 8
	...
END,
gender = CASE id ... END,
age = CASE id ... END,
city = CASE id ... END,
contact = CASE id ... END,
email = CASE id ... END;
-- Definition: A single UPDATE statement can set multiple columns at once, each using 
-- its own CASE WHEN...THEN...END block to assign different values per row based on id.
-- Real use case: Instead of running six separate UPDATE queries (one for class, one for 
-- gender, etc.) or one query per student, this fills in class, gender, age, city, contact, 
-- and email for all 6 students in a single database call — much more efficient for bulk 
-- data entry, like when a school digitizes old paper records all at once.