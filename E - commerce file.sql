SELECT COUNT(*) FROM customers;

SELECT SUM(p.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

SELECT p.product_name, SUM(oi.quantity) as total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;

SELECT c.first_name || ' ' || c.last_name AS customer, COUNT(o.order_id) AS orders_made
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY customer;