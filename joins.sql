USE malabarjewels;
CREATE TABLE customer
(
  Customer_id int PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email nvarchar(50) UNIQUE,
  address nvarchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(50) NOT NULL,
  zip char(10) NOT NULL
  );

 CREATE TABLE orders
 (
    Order_id INT NOT NULL,
    Order_date DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Customer_id INT,
    
    FOREIGN KEY (Customer_id) 
    REFERENCES customer(customer_id)
    );
----  --Insert 5 new records into the customer table------

  INSERT INTO customer
  (Customer_id,first_name,last_name,email,address,city,state,zip)
  VALUES
  (101,'viji','suriya','cheerfulviji@gmail.com','mainbazar','gudalur','Tamilnadu',625518),
  (102,'shayesha','kumar','vijisuriya1130@gmail.com','seegahalli','banglore','Karnataka',606101),
  (103,'swathi','shanmugam','swathishanmugam@gmail.com','kamarajar','cumbum','Theni',605518),
  (104,'devi','palaniswamy','devipalaniswamy@gmail.com','sscolony','madurai','madurai',655100),
  (105,'shanmugam','subramani','shanmugam@gmail.com','srs_colony','gudalur','ooty',620100);

    ----. Insert 5 new orders records.---
INSERT INTO orders
(Order_id, Order_date, Amount, Customer_id)
VALUES
(1, '2026-11-11', 5000, 101),
(2, '2025-03-16', 8000, 102),
(3, '2026-03-01', 10000, 103),
(4, '2026-04-11', 2000, 104),
(5, '2025-11-11', 8000, 105);

---Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.----
SELECT *
FROM customer c
INNER JOIN orders o ON c.customer_id = o.customer_id;

--- Make left and right joins on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column

SELECT *
FROM customer c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT *
FROM customer c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

---Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’column.---
SELECT *
FROM customer c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;


---Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3--

UPDATE orders
SET Amount = 100
WHERE Customer_id = 3;

---To check---
SELECT * 
FROM orders;