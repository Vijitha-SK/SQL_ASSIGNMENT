-- Create a customer table which comprises of these columns: ‘customer_id’,‘first_name’, ‘last_name’, ‘email’,‘address’, ‘city’,’state’,’zip
CREATE DATABASE malabarjewels;
USE  malabarjewels;
CREATE TABLE employee
(
  Customer_id int,
  first_name varchar(50),
  last_name varchar(50),
  email nvarchar(50),
  address nvarchar(50),
  city varchar(50),
  state varchar(50),
  zip char(10)
  );

  --Insert 5 new records into the table--
  INSERT INTO employee
  (Customer_id,first_name,last_name,email,address,city,state,zip)
  VALUES
  (101,'viji','suriya','cheerfulviji@gmail.com','mainbazar','gudalur','Tamilnadu',625518),
  (102,'shayesha','kumar','vijisuriya1130@gmail.com','seegahalli','banglore','Karnataka',606101),
  (103,'swathi','shanmugam','swathishanmugam@gmail.com','kamarajar','cumbum','Theni',605518),
  (104,'devi','palaniswamy','devipalaniswamy@gmail.com','sscolony','madurai','madurai',655100),
  (105,'shanmugam','subramani','shanmugam@gmail.com','srs_colony','gudalur','ooty',620100);

 ---Select only the ‘first_name’ and ‘last_name’ columns from the customer table--

 SELECT first_name,last_name
 FROM employee;

 --Select those records where ‘first_name’ starts with “s” and city is ‘gudalur’---

 SELECT first_name,city
 FROM employee
 WHERE first_name LIKE 's%'
 AND city = 'gudalur';

 ---Select those records where Email has only ‘gmail’.---

 SELECT first_name,last_name,email
 FROM employee
 WHERE email LIKE '%gmail%';

 ---Select those records where the ‘last_name’ doesn't end with “A”.---

 SELECT first_name,last_name
 FROM employee
 WHERE last_name NOT LIKE '%A';