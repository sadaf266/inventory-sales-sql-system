-- ============================================================================
-- PROJECT: Inventory & Sales Management System Backend
-- FILE: analytical_queries.sql (Business Intelligence Reports)
-- ============================================================================

-- ----------------------------------------------------------------------------
-- CHALLENGE 1: The Inner Join (Generating Detailed Customer Receipts)
-- ----------------------------------------------------------------------------
SELECT 
    o.order_id,
    o.order_date,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS line_total
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id ASC;


-- ----------------------------------------------------------------------------
-- CHALLENGE 2: Aggregation (Calculating Total Gross Store Revenue)
-- ----------------------------------------------------------------------------
SELECT 
    SUM(quantity * unit_price) AS total_gross_revenue,
    AVG(quantity * unit_price) AS average_order_item_value
FROM order_items;


-- ----------------------------------------------------------------------------
-- CHALLENGE 3: Top Selling Items (Grouped Aggregation & Metric Sorting)
-- ----------------------------------------------------------------------------
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_product_revenue
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;


-- ----------------------------------------------------------------------------
-- BONUS ADVANCED REPORT: Monthly Store Performance Breakdown
-- ----------------------------------------------------------------------------
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS sales_year,
    EXTRACT(MONTH FROM o.order_date) AS sales_month,
    COUNT(DISTINCT o.order_id) AS unique_orders_placed,
    SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY EXTRACT(YEAR FROM o.order_date), EXTRACT(MONTH FROM o.order_date)
ORDER BY sales_year DESC, sales_month DESC;
