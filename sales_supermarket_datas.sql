-- view dataset
select * from sales_supermarket_data;

-- The highest sales supermarket  data rating
select max(Rating) from sales_supermarket_data;

  
  -- The lowest sales supermarket data rating
  select min(Rating) from sales_supermarket_data;
  -- Total sales amount per transaction
select date,branch,product_line, 
  unit_price * quantity as total_sales
  from sales_supermarket_data;
  
  -- Total revenue by branch
  select branch, sum(unit_price * quantity) as total_revenue from sales_supermarket_data
  group by branch;
  
  -- Total quantity sold by product_line
  select product_line, sum(quantity) as total_quantity
  from sales_supermarket_data
  group by Product_line;
  
  -- Sales by customer type
  select customer_type, sum(unit_price * quantity) as total_sales
  from sales_supermarket_data
  group by customer_type;
  
  -- Number of transaction by gender
  select gender, count(*) as total_transactions
  from sales_supermarket_data
  group by Gender;
  
  -- Payment method usage
  select Payment, count(*) as payment_count
  from sales_supermarket_data
  group by Payment;
  
   -- Monthly sales trend 
   select
   extract(month from date) as month, sum(unit_price* quantity)
   as month_sales from sales_supermarket_data
   group by extract(month from date)
   order by month;
   
   -- best selling branch by revenue
   select branch, 
   sum(unit_price * quantity) as total_revenue
   from sales_supermarket_data 
   group by branch
   order by total_revenue desc;
  
  -- Product with average rating above 9
  select product_line, avg(rating) as average_rating 
  from sales_supermarket_data
  group by Product_line
  having avg(rating)>7;
  
-- Daily sales summary 
  select date, sum(unit_price * quantity) as daily_sales
  from sales_supermarket_data
  group by date
  order by date;
	SELECT 
    branch,
    SUM(unit_price * quantity) AS total_revenue,
    RANK() OVER (ORDER BY SUM(unit_price * quantity) DESC) AS revenue_rank
FROM sales_supermarket_data
GROUP BY branch;


SELECT 
    EXTRACT(MONTH FROM date) AS month,
    SUM(unit_price * quantity) AS monthly_sales
FROM sales_supermarket_data
GROUP BY EXTRACT(MONTH FROM date)
ORDER BY month;
  
  SELECT product_line, SUM(quantity) AS total_quantity
FROM sales_supermarket_data
GROUP BY product_line
ORDER BY total_quantity DESC
LIMIT 5;

SELECT product_line, AVG(rating) AS avg_rating
FROM sales_supermarket_data
GROUP BY product_line;SELECT product_line, AVG(rating) AS avg_rating
FROM sales_supermarket_data
GROUP BY product_line;

select 
   sum(unit_price * quantity) as total_revenue
   from sales_supermarket_data; 
   
   