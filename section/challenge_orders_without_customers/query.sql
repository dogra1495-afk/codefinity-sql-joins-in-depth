SELECT o.order_id, o.order_date, o.amount, c.name AS customer_name
FROM
    customers c
    RIGHT JOIN orders o ON c.customer_id = o.customer_id;