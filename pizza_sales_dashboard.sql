use pizzadb;
show tables;
desc pizza_sales;
select * from pizza_sales;

select sum(total_price) as total_revenue from pizza_sales;

select sum(total_price)/count(distinct order_id) as average_order_value from pizza_sales;

select sum(quantity) as total_pizza_sold from pizza_sales;

select count(distinct order_id) as total_orders_placed from pizza_sales;

select round(sum(quantity) / count(distinct order_id),2) as average_pizzas_per_order from pizza_sales;

select date_format(order_date,'%D') as order_day, count(distinct order_id) as totl_orders from pizza_sales;

select * from pizza_sales;

SELECT
  order_date,
  CONCAT(
    CAST(DAY(STR_TO_DATE(order_date, '%d-%m-%Y')) AS CHAR),
    CASE
      WHEN DAY(STR_TO_DATE(order_date, '%d-%m-%Y')) IN (11, 12, 13) THEN 'th'
      WHEN DAY(STR_TO_DATE(order_date, '%d-%m-%Y')) % 10 = 1 THEN 'st'
      WHEN DAY(STR_TO_DATE(order_date, '%d-%m-%Y')) % 10 = 2 THEN 'nd'
      WHEN DAY(STR_TO_DATE(order_date, '%d-%m-%Y')) % 10 = 3 THEN 'rd'
      ELSE 'th'
    END
  ) AS order_day,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  pizza_sales
GROUP BY
  order_date;
  
  SELECT
  DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  pizza_sales
GROUP BY
  order_day
  ORDER BY
  FIELD(order_day, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
;

select datepart(hour, order_time) as order_hours, count(distinct order_id) as total_orders
from pizza_sales
group by datepart(hour, order_time);

SELECT
  HOUR(STR_TO_DATE(order_time, '%H:%i')) AS order_hours,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  pizza_sales
GROUP BY
  order_hours
  order by order_hours;

select pizza_category, 
sum(total_price)* 100 /(select sum(total_price) from pizza_sales) 
from pizza_sales;

SELECT
  pizza_category,
  SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS percentage_of_sales
FROM
  pizza_sales
GROUP BY
  pizza_category;
  
  select * from pizza_sales;
  
  select 
  pizza_size, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as percentage_sales
  from
  pizza_sales
  group by 
  pizza_size
  order by percentage_sales desc;
  
  select pizza_category, sum(quantity) as total_pizza_sold 
  from pizza_sales
  group by pizza_category;
  
  select pizza_name, sum(quantity) as total_pizza_sold
  from pizza_sales
  group by pizza_name
  order by sum(quantity) limit 5;
  
  
  
  
