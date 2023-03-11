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
 
 SELECT min(amount)
 from orders
 
 SELECT max(amount)
 from orders
 
 SELECT avg(amount)
 from orders
 
 
 
 CREATE function mult10
 (
 @x as int 
 )
  returns int
  AS
  BEGIN 
  return @x * 10
  end
 
SELECT dbo.mult10(10) as result;
 
 
 
SELECT 
    CASE 
        WHEN 100 < 200 THEN 'Less than 200'
        WHEN 100 > 200 THEN 'Greater than 200'
        ELSE 'Equal to 200'
    END AS Result

 
 
