-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_type.category, SUM(order_details.quantity) AS quantity
FROM
    pizza_type
        JOIN
    pizzas ON pizza_type.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_type.category;


