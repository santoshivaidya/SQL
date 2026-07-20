use RetailMartDB;
select * from customers
where city not between
"Delhi" and "Pune";

select * from customer_orders
where order_date not between
"2026-01-05" and "2026-01-20";

select * from products
where unit_price not between
500 and 2000;

select * from customers 
where customer_id in (101,104,108,110);

select * from products 
where category in ("Electronics","Fitness","Stationery");

select * from customer_orders
where order_status in ("Order Placed","Delivered");

select * from customers 
where city not in ("Pune","Mumbai");

select * from products 
where brand not in ("Sony","Nike","Boat");

rename table customer_orders to orders;

select * from orders 
where order_channel not in ("Online");

insert into customers values
(101,"Kshish Sharma","Delhi","kshish@email.com","2026-04-16"),
(102,"Pooja Wani","Pune",null,"2026-04-16"),
(103,"Roshan Wagle","Mumbai","roshan@gmail.com","2026-04-16"),
(104,"Sneha Tare","Nagpur",null,"2026-04-16"),
(105,"Abhijit Jadhav","Jaipur","abhijit@gmail.com","2026-04-16");

select * from customers
where email is null ;

select * from customers 
where email is not null;

insert into products values
(301, 'Laptop', 'Electronics', 'Dell', 55000),
(302, 'Dumbbell', 'Fitness', NULL, 1500),
(303, 'Notebook', 'Stationery', 'Classmate', 80),
(304, 'Headphone', 'Electronics', 'Boat', 1200),
(305, 'Yoga Mat', 'Fitness', NULL, 900),
(306, 'Pen Set', 'Stationery', 'Parker', 350);

select * from products
where brand is null;

select * from products 
where brand is not null;

select * from customers 
order by created_at asc
limit 5 ;

select * from customers 
order by created_at asc
limit 5
offset 5;

select * from customers 
order by created_at asc;

select * from products
order by unit_price desc
limit 3;

select * from products 
order by unit_price desc
limit 5 offset 6;

select * from orders 
order by order_date asc
limit 7 offset 4;