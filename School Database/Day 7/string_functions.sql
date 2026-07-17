#String Function
#1. CONCAT()
SELECT id, CONCAT(fname,' ',lname) AS Student_fullname FROM students;

#2. CONCAT_WS()
SELECT id, CONCAT_WS('-',fname,lname,contact,email) AS Student_personal FROM students;

#3. SUBSTRING/SUBSTR
SELECT fname, SUBSTR(id,1) AS Short_id FROM students

#4. REPLACE
SELECT fname, REPLACE(id,1,100) AS Change_id FROM students;

#5. REVERSE()
SELECT fname, REVERSE(school_name) AS Reverse_string FROM students;

#6. UPPER()/UCASE()
SELECT id, UPPER(fname) AS Capital_name FROM students;

#7. LOWER()/LCASE()
SELECT id, LCASE(fname) AS Lower_name FROM students;