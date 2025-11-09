-- 11) Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category, 
round(sum(pizzas.price * order_details.quantity) / 
(select sum(pizzas.price * order_details.quantity) 
from pizzas join order_details 
on pizzas.pizza_id = order_details.pizza_id) * 100, 0) 
as percentage_wise_contribution from pizzas
join order_details on pizzas.pizza_id = order_details.pizza_id
join pizza_types on pizza_types.pizza_type_id = pizzas.pizza_type_id 
group by category order by percentage_wise_contribution desc;
