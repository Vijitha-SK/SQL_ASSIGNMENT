USE malabarjewels;

--- Arrange the ‘Orders’ dataset in decreasing order of amount----

SELECT *
FROM orders
ORDER BY Amount desc;

---2. Create a table with the name ‘Employee_details1’ consisting of these columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with
---the name ‘Employee_details2’ consisting of the same columns as the first table.

CREATE TABLE employee_details1
(
 Emp_id INT NOT NULL,
 Emp_name VARCHAR(50) NOT NULL,
 Emp_salary DECIMAL(10,2) NOT NULL,
 );

 CREATE TABLE employee_details2
 (
 Emp_id INT NOT NULL,
 Emp_name VARCHAR(50) NOT NULL,
 Emp_salary DECIMAL(10,2) NOT NULL,
 );

 INSERT INTO employee_details1
 (Emp_id,Emp_name,Emp_salary)
 VALUES
 (111,'viji',50000),
 (112,'swathi',10000),
 (113,'shayesha',50000),
 (114,'devi',8000),
 (115,'ju',9000);

 
 INSERT INTO employee_details2
 (Emp_id,Emp_name,Emp_salary)
 VALUES
 (116,'viji',50000),
 (117,'swathi',10000),
 (113,'shayesha',50000),
 (114,'devi',8000),
 (112,'ju',9000);

 ----Apply the UNION operator on these two tables
 ----Apply the INTERSECT operator on these two tables
 ----Apply the EXCEPT operator on these two tables

 ---UNION---
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details1
 UNION
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details2

 ---INTERSECT---
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details1
 INTERSECT
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details2

 --EXCEPT--
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details1
 EXCEPT
 SELECT emp_id,emp_name,Emp_salary
 FROM employee_details2