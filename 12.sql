-- Retrieve the total number of orders placed.

SELECT 
    COUNT(orders.order_id) AS total_order
FROM
    orders;