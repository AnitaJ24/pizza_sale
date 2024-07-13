-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_type.category,
    ROUND((SUM(order_details.quantity * pizzas.price)) / (SELECT 
                    ROUND(SUM(order_details.quantity * pizzas.price),
                                0) AS total_sales
                FROM
                    order_details
                        JOIN
                    pizzas ON pizzas.pizza_id = order_details.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_type
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_type.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_type.category
ORDER BY revenue DESC
LIMIT 4;


