create database project;
use project;
CREATE TABLE sales (
order_id VARCHAR(20),
order_date DATE,
ship_date DATE,
region VARCHAR(50),
category VARCHAR(50),
subcategory VARCHAR(50),
product_name VARCHAR(255),
sales FLOAT,
quantity INT,
discount FLOAT,
profit FLOAT
);
select * from sales;

SELECT SUM(sales) AS total_revenue
FROM sales;

SELECT region,
SUM(sales) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

SELECT category,
SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;


SELECT product_name,
SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT
discount,
AVG(profit) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;
