use sqlproject;
select * from sales_datas; 

-- Total Sales and Profit by Year
SELECT year, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM Sales_datas
GROUP BY year
ORDER BY year;

-- Top 5 Products by Sales
SELECT product_name, SUM(sales) AS total_sales
FROM Sales_datas
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Sales and Profit by Region and Segment

SELECT region, segment, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM Sales_datas
GROUP BY region, segment
ORDER BY region, segment;

-- Monthly Sales Trends for the Current Year
SELECT DATE_FORMAT(order_date, '%m-%d-%y') AS month, SUM(sales) AS total_sales
FROM Sales_datas
WHERE year = YEAR(CURDATE())
GROUP BY month
ORDER BY month;

-- Average Shipping Cost by Ship Mode

SELECT ship_mode, AVG(shipping_cost) AS average_shipping_cost
FROM Sales_datas
GROUP BY ship_mode
ORDER BY average_shipping_cost DESC;

-- Customer Order Priority Distribution

SELECT order_priority, COUNT(*) AS order_count
FROM Sales_datas
GROUP BY order_priority
ORDER BY order_count DESC;

-- Profit Margin by Category

SELECT category, SUM(profit) AS total_profit, SUM(sales) AS total_sales,
       (SUM(profit) / SUM(sales)) * 100 AS profit_margin
FROM Sales_datas
GROUP BY category
ORDER BY profit_margin DESC;

-- Sales by State and Market

   SELECT state, market, SUM(sales) AS total_sales
FROM Sales_datas
GROUP BY state, market
ORDER BY total_sales DESC;
 
-- Sales by State and Market 
SELECT state, market, SUM(sales) AS total_sales
FROM Sales_datas
GROUP BY state, market
ORDER BY total_sales DESC;
