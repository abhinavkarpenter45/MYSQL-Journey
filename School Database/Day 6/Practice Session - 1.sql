                                     #Practice Session - 1

/*                                         Task - 1
1. Create a database bank_db
2. Create a table employees(emp_id, name, desig, dept)
   a. emp_id column should not allow duplicate and null value, value of emp_id column should auto increment
   b. name column should not contain null value
   c. desig column should have defult value as 'Probation'
*/

CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
contact VARCHAR(13) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
age INT NOT NULL,
desig VARCHAR(50) DEFAULT 'Probation',
dept VARCHAR(50) NOT NULL
);

ALTER TABLE employees AUTO_INCREMENT = 101;

INSERT INTO employees(fname, lname, age, contact, email, desig, dept) VALUES 
("Victor","Mehta",29,"9876501234","victormehta@bank.com","Associate","Deposit"),
("Sham","Patil",35,"9876502345","shampatil@bank.com","Cashier","Cash"),
("Alex","Fernandes",40,"9876503456","alexfernandes@bank.com","Accountant","Account"),
("Raju","Verma",45,"9876504567","rajuverma@bank.com","Manager","Loan"),
("Paul","D'Souza",32,"9876505678","paulds@bank.com","Associate","Loan"),
("Neha","Kapoor",27,"9876506789","nehakapoor@bank.com","Cashier","Cash"),
("Vikram","Rathi",38,"9876507890","vikramrathi@bank.com","Manager","Deposit"),
("Sonia","Malhotra",26,"9876508901","soniamalhotra@bank.com","Associate","Account"),
("Arjun","Nair",33,"9876509012","arjunnair@bank.com","Accountant","Loan"),
("Kavya","Reddy",30,"9876510123","kavyareddy@bank.com","Associate","Cash"),
("Rohit","Bansal",41,"9876511234","rohitbansal@bank.com","Manager","Account"),
("Ishita","Sharma",28,"9876512345","ishitasharma@bank.com","Cashier","Loan"),
("Manoj","Tiwari",36,"9876513456","manojtiwari@bank.com","Associate","Deposit"),
("Priya","Iyer",31,"9876514567","priyaiyer@bank.com","Accountant","Cash"),
("Ankit","Chauhan",34,"9876515678","ankitchauhan@bank.com","Manager","IT");

SELECT * FROM employees;


/*                                                Task - 2
1, Display the full data Raju and Pual
emp_id  |name  |desig     |dept
101     |Raju  |Manager   |Loan
103     |Paul  |Associate |Loan
*/
SELECT * FROM employees WHERE dept = "Loan";

/* 
2.Display the full data of Raju
emp_id  |name  |desig     |dept
101     |Raju  |Manager   |Loan
*/
SELECT * FROM employees WHERE id = 101;

/* 
3.Display name and id of Raju
emp_id  |name  
101     |Raju 
*/
SELECT id, fname FROM employees WHERE id = 101;

/* 
4. Update Pual dept Loan to IT
emp_id  |name  |desig     |dept  to  emp_id  |name  |desig     |dept
103      Paul   Associate  Loan  to  103      Paul   Associate  Loan
*/
UPDATE employees SET dept = 'IT' WHERE id = 103;
SELECT * FROM employees WHERE id = 103;

/* 
5. Delete Sham data from table
emp_id  |name  |desig     |dept
102      Sham   Cashier    Cash
*/
DELETE FROM employees WHERE id = 115;
SELECT * FROM employees WHERE id = 102;
SELECT * FROM employees;