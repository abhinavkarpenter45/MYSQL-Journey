								#Practice Session - 2
USE bank_db;

SELECT * FROM employees;

#Task-1 101:Raju:Manager:Loan;
SELECT CONCAT_WS(':',id,fname,desig,dept) AS Task1 FROM employees WHERE id = 104;

#Task-2 101:Raju Rastogi:Manager:Loan
SELECT CONCAT_WS(':',id, CONCAT(fname,' ',lname), desig, dept) AS Task2 FROM employees WHERE id = 104;

#Task-3 101:Raju:MANAGER:Loan
SELECT CONCAT_WS(';', id, fname, UPPER(desig), dept) AS Task3 FROM employees WHERE id = 104;

#Task-4
#L101 Raju
#C102 Sham
SELECT CONCAT(LEFT(dept,1),id) , fname AS Task4 FROM employees;
