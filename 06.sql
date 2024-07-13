-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
  pizza_type.category,  count(pizza_type.name)as pizza_count
FROM
    pizza_type
    group by category;