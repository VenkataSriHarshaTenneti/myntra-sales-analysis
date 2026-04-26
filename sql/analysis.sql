-- Monthly revenue
CREATE OR REPLACE VIEW vw_monthly_revenue AS
SELECT month, SUM(revenue) AS total_revenue
FROM myntra_sales
GROUP BY month;

-- Top states
CREATE OR REPLACE VIEW vw_top_states AS
SELECT ship_state, SUM(revenue) AS total_revenue
FROM myntra_sales
GROUP BY ship_state;

-- Category performance
CREATE OR REPLACE VIEW vw_category AS
SELECT category, SUM(revenue) AS total_revenue
FROM myntra_sales
GROUP BY category;

-- Fulfillment analysis
CREATE OR REPLACE VIEW vw_fulfillment AS
SELECT 
	fulfilled_by, 
	COUNT(DISTINCT order_id) AS orders, 
	SUM(revenue) AS total_revenue
FROM myntra_sales
GROUP BY fulfilled_by;

-- Courier status
CREATE OR REPLACE VIEW vw_courier_status AS
SELECT 
	courier_status, 
	COUNT(*) AS total_orders
FROM myntra_sales
GROUP BY courier_status;

-- Kpis
CREATE OR REPLACE VIEW vw_kpis AS
SELECT 
	COUNT(DISTINCT order_id) AS total_orders, 
	SUM(revenue) AS total_revenue,
	SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value,
	COUNT(*) / COUNT(DISTINCT order_id) AS avg_items_per_order
FROM myntra_sales;

SELECT * FROM vw_monthly_revenue;
SELECT * FROM vw_top_states;
SELECT * FROM vw_category;
SELECT * FROM vw_fulfillment;
SELECT * FROM vw_courier_status;
SELECT * FROM vw_kpis;