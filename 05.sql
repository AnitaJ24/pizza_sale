-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) as hour, COUNT(order_id) as order_count
FROM
    orders
GROUP BY HOUR(order_time)
ORDER BY hour asc;