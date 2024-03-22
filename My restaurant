.open restaurant.db
  
/*-- create table 1
CREATE TABLE IF NOT EXISTS customers (
  customer_id int,
  customer_name text,
  branch_id int 
); 

-- insert data to table 1
INSERT INTO customers VALUES 
  (1, "Ai", 1),
  (2, "Nata", 2),
  (3, "Patt", 1),
  (4, "Shi", 3),
  (5, "Fah", 4);  

-- create table 2
CREATE TABLE IF NOT EXISTS menu (
  menu_id int,
  menu_name text,
  menu_price int
);

-- insert data to table 2
INSERT INTO menu VALUES
  (1, "stawberry shortcake", 70),
  (2, "chocolate cake", 80),
  (3, "banoffee pie", 100),
  (4, "tiramisu", 60),
  (5, "blueberry cheese cake", 50); 

-- create table 3
CREATE TABLE IF NOT EXISTS branch (
  branch_id int,
  city text
);

-- insert data to table 3
INSERT INTO branch VALUES 
  (1, "Bangkok"),
  (2, "Chiangmai"),
  (3, "Pattaya"),
  (4, "Ayutthaya");

-- create table 4
CREATE TABLE IF NOT EXISTS orders (
  order_id int,
  customer_id int,
  menu_id int,
  QTY int
);

-- insert data to table 4
INSERT INTO orders VALUES
  (1, 1, 2, 5),
  (2, 2, 3, 2),
  (3, 3, 4, 1),
  (4, 4, 5, 3),
  (5, 5, 1, 4),
  (6, 1, 3, 2),
  (7, 2, 2, 1),
  (8, 3, 1, 3),
  (9, 4, 5, 2),
  (10, 5, 4, 1);  

-- create table 5 
CREATE TABLE IF NOT EXISTS invoice (
  invoice_id int,
  order_id int,
  invoice_date text,
  payment text
);

-- insert data to table 5
INSERT INTO invoice VALUES
(1, 1, "2023-01-01", "cash"),
(2, 2, "2023-01-02", "credit card"),
(3, 3, "2023-01-03", "cash"),
(4, 4, "2023-01-04", "credit card"),
(5, 5, "2023-01-05", "cash"),
(6, 6, "2023-01-06", "credit card"),
(7, 7, "2023-01-07", "cash"),
(8, 8, "2023-01-08", "credit card"),
(9, 9, "2023-01-09", "cash"),
(10, 10, "2023-01-10", "credit card");*/

.mode column 
select * from customers; 
select * from menu;
select * from branch;
select * from orders;
select * from invoice;

-- which branch is the best seller?
SELECT 
      bra.city,
      SUM(men.menu_price * ord.QTY) AS total_price
FROM (SELECT * FROM customers) as cus 
JOIN (SELECT * FROM orders) as ord
ON cus.customer_id = ord.customer_id
JOIN (SELECT * FROM menu) as men
ON ord.menu_id = men.menu_id
JOIN (SELECT * FROM branch) as bra 
ON cus.branch_id = bra.branch_id
GROUP BY bra.city 
ORDER BY total_price DESC;



-- which menu is the best seller?
SELECT 
      men.menu_name,
      SUM(ord.QTY) AS total_qty
FROM (SELECT * FROM menu) as men
JOIN (SELECT * FROM orders) as ord
on men.menu_id = ord.menu_id
GROUP BY men.menu_name
ORDER BY total_qty DESC;


-- what payment that almost ppl paid with?
SELECT 
  CASE WHEN payment = "cash" THEN "cash"
  ELSE "credit card" END AS "payment type",
  COUNT(*) n 
FROM invoice
GROUP BY payment
ORDER BY n DESC; 
