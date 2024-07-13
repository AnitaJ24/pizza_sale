-- Determine the top 3 most ordered pizza types based on revenue for each pizza category


select category, name, revenue from (select category, name, revenue,
 rank() over (partition by category order by revenue desc) as rn from
(select pizza_type.category, pizza_type.name,
 round(sum(pizzas.price*order_details.quantity),2)as revenue
from pizza_type
join pizzas on
pizzas.pizza_type_id=pizza_type.pizza_type_id
join order_details on
pizzas.pizza_id=order_details.pizza_id
group by pizza_type.category, pizza_type.name) as a) as b
where rn <= 3;






