# Inventory & Sales Management System (SQL Backend)

A foundational, entry-level relational database backend and data analytics workspace designed for a retail or e-commerce storefront application. 

## 📌 Project Overview
The objective of this project was to move away from isolated, standalone queries and instead engineer a functional, end-to-end database ecosystem. It implements explicit primary and foreign keys, structures entity relationships to eliminate duplicate entries, and exposes actionable business reports through advanced data querying.

## 📐 Relational Architecture & ERD Blueprint
The system features a 4-table blueprint structured around entity relationships:

* **`customers`**: Stores unique customer profile identities (`customer_id` as the Primary Key).
* **`products`**: Maintains inventory listings, catalog pricing, and stock capacities.
* **`orders`**: Captures macro transactions linking a customer to an order event via a Foreign Key mapping.
* **`order_items`**: Serves as a relational line-item bridge table managing the Many-to-Many connection between orders and products.
