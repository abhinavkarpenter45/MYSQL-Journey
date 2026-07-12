#Table main data add krna Method 1
INSERT INTO students(id,fname,lname)
VALUES(1,"Abhinav","Karpenter");

#Method 2 bina column name pass kiye seqence main data add krna 
INSERT INTO students
VALUES(2,"Kanha","Suthar");

#Method 3 single line data add
INSERT INTO students VALUES(3,"Shivam","Rathor");

#Add multiple data 
INSERT INTO students VALUES(4,"Vedant","Soni"),(5,"Sunil","Carpenter"),(6,"Anil","Carpenter");

#Reading data from a table "Full table viwe"
SELECT * FROM students;

#Viwe particular coloumn
SELECT name FROM students;

#Viwe multiple Column in table
SELECT id,name FROM  students;

#Viwe particular student detail to use WHERE 
SELECT * FROM students WHERE id = 4;