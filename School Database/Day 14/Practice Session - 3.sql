									#Practice Session - 3
USE bank_db;
SELECT * FROM employees;

#Task-1 find different type of department in database
SELECT DISTINCT dept FROM employees;

#Task-2 display records with high - low salary
SELECT * FROM employees ORDER BY salary DESC;

#Task-3 how to see only top 3 records from a table
SELECT * FROM employees LIMIT 3;

#Task-4 show records where first name start with letter "A"
SELECT * FROM employees WHERE fname LIKE "A%";

#Task-5 show records where length of the lname is 4 character
SELECT * FROM employees WHERE lname LIKE "____";

#Task-6 find total no. of employees in database
SELECT COUNT(*) FROM employees;

#Task-7 find no of employees in each department
SELECT dept, COUNT(dept) FROM employees GROUP BY dept;

#Task-8 find lowest salary paying 
SELECT MIN(salary) FROM employees;

#Task-9 find heighest salary paying with full details
SELECT * FROM employees
WHERE salary =(SELECT MAX(salary) FROM employees);

#Task-10 find total salary paying in loan department 
SELECT SUM(salary) FROM employees WHERE dept = 'Loan';

#Task-!! average salary paying in each department
SELECT dept, AVG(salary) FROM employees GROUP BY dept;