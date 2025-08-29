-- sql/queries.sql
-- 1) Total sales by month
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS year_month, SUM(Sales) AS total_sales, COUNT(DISTINCT OrderID) AS order_count
FROM superstore
GROUP BY year_month
ORDER BY year_month;

-- 2) Top 10 products by revenue
SELECT ProductID, ProductName, SUM(Sales) AS revenue
FROM superstore
GROUP BY ProductID, ProductName
ORDER BY revenue DESC
LIMIT 10;

-- 3) Sales by region
SELECT Region, SUM(Sales) AS total_sales, AVG(Profit) AS avg_profit
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- 4) Repeat customers (orders per customer)
SELECT CustomerID, COUNT(DISTINCT OrderID) AS orders, SUM(Sales) AS lifetime_sales
FROM superstore
GROUP BY CustomerID
HAVING orders > 1
ORDER BY lifetime_sales DESC;

-- 5) Average order value (AOV) by month
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS year_month, SUM(Sales)/COUNT(DISTINCT OrderID) AS avg_order_value
FROM superstore
GROUP BY year_month
ORDER BY year_month;

-- 6) Sales concentration: percent of revenue from top 10 products
WITH top10 AS (SELECT ProductID, SUM(Sales) AS revenue
  FROM superstore
  GROUP BY ProductID
  ORDER BY revenue DESC
  LIMIT 10)
SELECT (SUM(t.revenue) / (SELECT SUM(Sales) FROM superstore)) * 100 AS pct_top10_revenue
FROM top10 t;
