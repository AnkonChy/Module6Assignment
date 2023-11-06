SELECT c.customer_name, SUM(oi.quantity * p.product_price) AS total_purchase_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_purchase_amount DESC
LIMIT 5;
