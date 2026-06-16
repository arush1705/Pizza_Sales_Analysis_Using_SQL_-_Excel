DROP TABLE IF EXISTS pizza_sales;

CREATE TABLE pizza_sales (
    pizza_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    pizza_name_id VARCHAR(100),
    quantity INTEGER,
    order_date TEXT,
    order_time TIME,
    unit_price NUMERIC(10,2),
    total_price NUMERIC(10,2),
    pizza_size VARCHAR(10),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100)
); 

ALTER TABLE pizza_sales
ALTER COLUMN order_date TYPE DATE
USING TO_DATE(order_date, 'DD-MM-YYYY');

SELECT * FROM pizza_sales;

--Total Revenue
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;  

--Average Order Value
SELECT (SUM(total_price)/ COUNT(DISTINCT order_id)) AS Average_Order_Value  FROM pizza_sales;
  
--Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales;
  
--Total Orders
SELECT COUNT( DISTINCT order_id) AS Total_Orders FROM pizza_sales;

--Average Pizzas Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/ CAST(COUNT( DISTINCT order_id) AS DECIMAL(10,2))AS DECIMAL (10,2)) 
AS Average_Pizzas_Per_Order FROM pizza_sales;

SELECT * FROM pizza_sales;

--Daily Trend for Total Orders
SELECT
    TO_CHAR(order_date, 'Day') AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY TO_CHAR(order_date, 'Day') ORDER BY TO_CHAR(order_date, 'Day');

--Hourly Trend for Orders
SELECT EXTRACT(HOUR FROM order_time) AS order_hours, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales 
GROUP BY EXTRACT(HOUR FROM order_time);

--% of Sales by Pizza Category
SELECT pizza_category, SUM(total_price) AS Total_Revenue,
ROUND(100*SUM(total_price)/(SELECT SUM(total_price) FROM pizza_sales WHERE EXTRACT(MONTH FROM order_date) = 1),2) AS Pecentage_of_total 
FROM pizza_sales 
WHERE EXTRACT(MONTH FROM order_date) = 1
GROUP BY pizza_category; -- for month of January

--% of Sales by Pizza Size
SELECT pizza_size, SUM(total_price) AS Total_Revenue , ROUND(100*SUM(total_price)/( SELECT SUM(total_price) FROM pizza_sales WHERE EXTRACT(QUARTER FROM order_date ) = 1),2) AS Pecentage_of_total
FROM pizza_sales
WHERE EXTRACT(QUARTER FROM order_date ) = 1
GROUP BY pizza_size 
ORDER BY Pecentage_of_total DESC; -- for first quarter

--% of Sales by Pizza Category
SELECT pizza_category, COUNT(pizza_id) AS pizzas_sold, ROUND(100*COUNT(pizza_id)/ (SELECT COUNT(pizza_id) FROM pizza_sales),2) AS Pecentage_of_total
FROM pizza_sales GROUP BY pizza_category;

--Top 5 Best Sellers by Total Pizzas Sold 
SELECT pizza_name, SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales
GROUP BY pizza_name
ORDER BY COUNT(quantity) DESC LIMIT 5;

--Bottom 5 Best Sellers by Total Pizzas Sold
SELECT pizza_name, SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales
GROUP BY pizza_name
ORDER BY COUNT(quantity) ASC LIMIT 5;
  
