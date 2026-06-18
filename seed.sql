-- ============================================================================
-- PROJECT: Inventory & Sales Management System Backend
-- FILE: seed_data.sql (Mock Data Insertion)
-- ============================================================================

-- Populate Customers
INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Smith', 'john.smith@email.com'),
('Alice', 'Jones', 'alice.j@email.com'),
('Robert', 'Miller', 'bob.miller@email.com'),
('Emily', 'Davis', 'emily.d@email.com');

-- Populate Products
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Mechanical Keyboard', 89.99, 50),
('Ergonomic Mouse', 49.99, 120),
('27-inch Monitor', 249.99, 30),
('USB-C Hub Adapter', 29.99, 200),
('Wireless Headphones', 159.99, 15);

-- Populate Orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2026-06-10'),
(2, '2026-06-15'),
(3, '2026-06-16'),
(1, '2026-06-18');

-- Populate Order Line Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 89.99),   -- Order 1: John bought 1 Keyboard
(1, 2, 2, 49.99),   -- Order 1: John bought 2 Mice
(2, 3, 1, 249.99),  -- Order 2: Alice bought 1 Monitor
(2, 4, 1, 29.99),   -- Order 2: Alice bought 1 USB-C Hub
(3, 5, 1, 159.99),  -- Order 3: Robert bought 1 Set of Headphones
(4, 2, 1, 49.99),   -- Order 4: John returned & bought another Mouse
(4, 4, 3, 29.99);   -- Order 4: John bought 3 USB-C Hubs
