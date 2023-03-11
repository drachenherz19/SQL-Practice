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
 
 --Answer 1:
 SELECT * FROM orders order by amount desc;
 
 --Answer 2:
 CREATE TABLE Employee_details1
(
  emp_id int PRIMARY KEY, 
  emp_name varchar(50),
  emp_salary int
 )
 CREATE TABLE Employee_details2
(
  emp_id int PRIMARY KEY, 
  emp_name varchar(50),
  emp_salary int
  )
  
  insert into Employee_details1 values (1,'Ram',50000)
  insert into Employee_details1 values (2,'Bam',60000)
  insert into Employee_details1 values (3,'Tam',70000)
  
  insert into Employee_details2 values (1,'Lal',50000)
  insert into Employee_details2 values (2,'Bal',60000)
  insert into Employee_details2 values (3,'Pal',70000)
  
  --Answer 3:
SELECT emp_id, emp_name, emp_salary FROM Employee_details1
UNION
SELECT emp_id, emp_name, emp_salary FROM Employee_details2;
  
 --Answer 4:
SELECT emp_id, emp_name, emp_salary FROM Employee_details1
INTERSECT
SELECT emp_id, emp_name, emp_salary FROM Employee_details2;

--Answer 5:
SELECT emp_id, emp_name, emp_salary FROM Employee_details1
UNION
SELECT emp_id, emp_name, emp_salary FROM Employee_details2;