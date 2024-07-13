-- Identify the highest-priced pizza.

SELECT 
    pizza_type.name, pizzas.price
FROM
    pizza_type
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_type.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 5;
