SELECT COUNT(*) FROM myntra_sales;

SELECT MIN(date), MAX(date) FROM myntra_sales;

SELECT COUNT(DISTINCT order_id) AS total_orders 
FROM myntra_sales;

SELECT SUM(revenue) AS total_revenue
FROM myntra_sales;

SELECT SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value
FROM myntra_sales;

SELECT COUNT(*) / COUNT(DISTINCT order_id) AS avg_items_per_order
FROM myntra_sales;

DELETE FROM myntra_sales
WHERE month = 0;

SELECT COUNT(*), SUM(revenue)
FROM myntra_sales
WHERE month = 0;

-- Monthly revenue
SELECT 
	month,
	SUM(revenue) AS total_revenue
FROM myntra_sales
GROUP BY month
ORDER BY month;

-- Monthly orders
SELECT 
	month,
	COUNT(DISTINCT order_id) AS orders
FROM myntra_sales
GROUP BY month
ORDER BY month;

-- Avg Order Value
SELECT 
	month,
	SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value
FROM myntra_sales
GROUP BY month
ORDER BY month;

-- Qty sold
SELECT 
	month,
	SUM(qty) AS total_items
FROM myntra_sales
GROUP BY month
ORDER BY month;


SELECT 
	month,
	COUNT(*) AS rows
FROM myntra_sales
GROUP BY month
ORDER BY month;

