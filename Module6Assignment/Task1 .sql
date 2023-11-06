SELECT c.customer_id, c.customer_name, c.customer_email, c.customer_location, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.customer_email, c.customer_location
ORDER BY total_orders DESC;
