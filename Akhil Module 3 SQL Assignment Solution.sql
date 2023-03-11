create table orders
(
  order_id int PRIMARY KEY,
  order_date date,
  amount int, 
  customer_id int
 )
 
 insert into orders values (1, '2000-08-08', 5000, 1)
 insert into orders values (2, '2000-12-26', 8000, 2)
 insert into orders values (3, '2000-11-29', 25000, 3)

CREATE TABLE Customer
(
  customer_id int PRIMARY KEY, 
  first_name varchar(50),
  last_name varchar(50),
  email varchar(50),
  address varchar(50),
  city varchar (50),
  state varchar (50),
  zip int
 )
 
 insert into Customer VALUES (1, 'Bob', 'Ross', 'Bobross@gmail.com', 'C -48, Off Shanadoa highway, Brisbane, Australia','Brisbane', 'Australia', '500804')
 insert into Customer VALUES (2, 'Gadolf', 'Hitler', 'therealhitler@gmail.com', 'B -48, Off Maple highway, Damstard, Germany','Damstard', 'Germany', '400804') 
 insert into Customer VALUES (3, 'Cristiano', 'Ronaldo', 'ronaldo10@gmail.com', 'D -48, Off Redwood highway, Lisbon, Portugal','Lisbon', 'Portugal', '300804') 
 insert into Customer VALUES (4, 'Sachin', 'Tendulkar', 'mrindia@gmail.com', 'F -48, Off Oakwood highway, Mumbai, India','Mumbai', 'India', '200804') 
 insert into Customer VALUES (5, 'Amitabh', 'Bachchan', 'Bigb@gmail.com', 'G -48, Off Mahogany highway, San Jose, California','San Jose', 'USA', '100804') 
 
 SELECT Customer.customer_id, orders.customer_id
 from Customer
 INNER JOIN orders
 on Customer.customer_id = orders.customer_id
 
 SELECT order_id
 from orders
 LEFT JOIN Customer
 on Customer.customer_id = orders.customer_id
 
 SELECT order_id
 from orders
 RIGHT JOIN Customer
 on Customer.customer_id = orders.customer_id
 
 update orders
 set amount=100
 WHERE customer_id=3
 
 SELECT * from orders