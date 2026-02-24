create database RetailMartDB;
use RetailMartDB;
create table customers(
customer_id int,
full_name varchar(50), 
phone varchar(20),
email varchar(150), 
city varchar(50), 
created_at date
);
create table products(
product_id int,
product_name varchar(50),
category varchar(50),
brand varchar(50),
unit_price decimal(10,2),
stock_qty int
);
create table orders(
order_id int,
customer_id int,
order_date date,
order_status varchar(50),
order_channel varchar(100),
city varchar(100)
);
create table order_items(
order_item_id int,
order_id int,
product_id int,
quantity int,
unit_price decimal,
discount_pct decimal(5,2)
);
alter table customers 
add gender varchar(10);
alter table customers
rename column phone to mobile_no;
alter table customers
modify email varchar(150);
alter table products
drop column stock_qty;
rename table orders to customer_orders;
drop table order_items;
drop database RetailMartDB;
create database RetailMartDB;
use RetailMartDB;
create table customers(
customer_id int,
full_name varchar(50), 
phone varchar(20),
email varchar(150), 
city varchar(50), 
created_at date
);
create table products(
product_id int,
product_name varchar(100),
category varchar(50),
brand varchar(50),
unit_price decimal(10,2),
stock_qty int
);
create table orders(
order_id int,
customer_id int,
order_date date,
order_status varchar(50),
order_channel varchar(50),
city varchar(100)
);
create table order_items(
order_item_id int,
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
discount_pct decimal(5,2)
);
SELECT * FROM customers;
RENAME TABLE orders TO customer_orders;
INSERT INTO customers
VALUES
(1,'sakshi parkhe','9987654321','sakshi@gmail.com','nashik','2025-01-1'),
(2,'samruddhi parkh','9123456789','samruddhi@gmail.com','mumbai','2026-02-13'),
(3,'Reshma patil','8912345678','reshma@gmail.com','pune','2026-03-14'),
(4,'shruti waghr','83245678901','shruti@gmail.com','nagpur','2026-04-30'),
(5,'tanvi patil','7896543234','tanvi@gmail.com','jalna','2026-05-11'),
(6,'yash patil','9098765432','yash@gmail.com','belglore','2025-02-15'),
(7,'mamta joshi','8576543216','mamta@gmail.com','pimpari','2025-01-18'),
(8,'namrata patni','9988776655','namrata@gmail.com','telngana','2025-04-29'),
(9,'sakshi shinde','8877996655','sakshi@gmail.com','gujrat','2025-02-28'),
(10,'vaishu kathar','7778889990','vaishu@gmail.com','pune','2025-01-25');
INSERT INTO products 
VALUES
(1,'laptop 14','electronics','Apple',50000,00),
(2,'mobile S23','electronics','Samsung',65000,00),
(3,'lipgloss','fashion','lakme',400,30),
(4,'spekar','electronics','Samsung',15000,00),
(5,'shoes','faashion','prozone',1700,00),
(6,'geuins','faashion','isa',1518),
(7,'charger','electronics','dell',6000,00),
(8,'watch','electronics','taitanic',7000,00),
(9,'tablet','electronics','sony',70000,00),
(10,'iphone','electronics','apple',1,00,000,00),
(11,'oppo','electronics','oppo',18800,00),
(12,'headphones','electronics','sony',500,00);
SELECT * FROM customer_orders;
INSERT INTO customer_orders 
VALUES
(1,011,'2025-01-11','delivered','online','pune'),
(2,022,'2025-02-12','dhipped','store','delhi'),
(3,033,'2025-03-13','dancelled','online','aurangabad'),
(4,044,'2025-04-14','delivered','app','pune'),
(5,055,'2025-05-15','processing','online','delhi'),
(6,066,'2025-06-16','delivered','store','nashik'),
(7,077,'2025-07-17','shipped','app','gujrat'),
(8,088,'2025-08-18','processing','online','jaipur'),
(9,099,'2025-09-19','delivered','store','pimpari'),
(10,100,'2025-10-20','cancelled','online','nagpur'),
(11,101,'2025-11-21','delivered','app','telngana'),
(12,102,'2025-12-22','processing','online','mumbai'),
(13,103,'2026-01-23','delivered','store','pune'),
(14,104,'2026-02-24','shipped','online','nashik'),
(15,105,'2026-03-25','delivered','app','pune');
SELECT * FROM order_items;
ALTER TABLE order_items DROP order_item_id;
SELECT * FROM order_items;
INSERT INTO order_items  
VALUES
(1, 100, 200, 2, 500.00, 5.00),
(2, 101, 204, 1, 789.50, 10.00),
(3, 102, 203, 3, 239.99, 0.00),
(4, 103, 214, 5, 15.75, 2.50),
(5, 104, 208, 1, 1200.00, 15.00),
(6, 105, 201, 2, 75.00, 0.00),
(7, 106, 202, 4, 45.99, 5.00),
(8, 107, 202, 2, 250.00, 8.00),
(9, 108, 209, 1, 499.99, 0.00),
(10, 109, 264, 6, 9.99, 0.00),
(11, 100, 249, 3, 150.00, 12.00),
(12, 101, 243, 2, 29.99, 0.00),
(13, 107, 262, 1, 75.00, 0.00),
(14, 105, 265, 2, 899.50, 5.00),
(15, 108, 260, 10, 15.75, 3.00),
(16, 105, 274, 8, 9.99, 0.00),
(17, 107, 288, 1, 250.00, 0.00),
(18, 109, 287, 2, 1200.00, 10.00),
(19, 110, 206, 3, 45.99, 5.00),
(20, 1010, 803, 4, 29.99, 0.00),
(21, 1011, 809, 1, 150.00, 0.00),
(22, 1011, 801, 2, 499.99, 7.50),
(23, 1012, 204, 12, 9.99, 0.00),
(24, 1012, 202, 5, 75.00, 5.00),
(25, 1013, 205, 1, 899.50, 0.00),
(26, 1013, 210, 6, 15.75, 2.00),
(27, 1014, 207, 1, 1200.00, 20.00),
(28, 1014, 206, 2, 45.99, 0.00),
(29, 1015, 203, 7, 29.99, 0.00),
(30, 1015, 208, 3, 250.00, 5.00),
(31, 1016, 201, 1, 499.99, 0.00),
(32, 1016, 209, 2, 150.00, 10.00),
(33, 1017, 204, 15, 9.99, 0.00),
(34, 1017, 210, 4, 15.75, 0.00),
(35, 1018, 205, 1, 899.50, 5.00),
(36, 1018, 202, 3, 75.00, 0.00),
(37, 1019, 208, 2, 250.00, 0.00),
(38, 1019, 206, 5, 45.99, 8.00),
(39, 1020, 203, 6, 29.99, 0.00),
(40, 1020, 207, 1, 1200.00, 12.00);
UPDATE customers
SET city = 'pune'
WHERE customer_id = 1;
UPDATE products
SET unit_price = unit_price * 1.08
WHERE category = 'electronics';
UPDATE products
SET stock_qty = stock_qty - 5
WHERE product_id = 1;
DELETE FROM customer_orders
WHERE order_status = 'cancelled';
DELETE FROM customers
WHERE customer_id = 4;
SELECT *
FROM customers
WHERE city = 'pune';
SELECT *
FROM products
WHERE unit_price > 2000;
SELECT *
FROM customer_orders
WHERE channel = 'online';
SELECT *
FROM customer_orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31';
SELECT *
FROM products
WHERE unit_price BETWEEN 500 AND 1500;
SELECT *
FROM order_items
WHERE quantity BETWEEN 2 AND 6;
SELECT DISTINCT city
FROM customers;
SELECT *
FROM products
ORDER BY unit_price DESC;
SELECT *
FROM customer_orders
ORDER BY order_date ASC, order_status ASC;
SELECT city, COUNT(oder_id) 
FROM customer_orders
GROUP BY city;
SELECT city, COUNT(customer_id) 
FROM customers
GROUP BY city;
SELECT category, AVG(unit_price) 
FROM products
GROUP BY category;
SELECT 
    order_id,
    SUM(quantity * unit_price * (1 - discount_pct/100)) AS total_revenue
FROM order_items
GROUP BY order_id;
ALTER TABLE order_items
ADD category VARCHAR(50);
SELECT 
    category,
    SUM(quantity * unit_price * (1 - discount_pct/100)) AS total_revenue
FROM order_items
GROUP BY category;
SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;
SELECT product_id,
    SUM(quantity) 
FROM order_items
GROUP BY product_id;
SELECT city, COUNT(order_id) 
FROM customer_orders
GROUP BY city
HAVING COUNT(order_id) > 5;
SELECT category, AVG(unit_price) 
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2500;