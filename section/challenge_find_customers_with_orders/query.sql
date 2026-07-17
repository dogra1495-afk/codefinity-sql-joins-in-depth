SELECT DISTINCT name
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;