-- 03) Identify the highest-priced pizza.

select pizza_types.name, pizzas.price from pizzas 
join pizza_types 
on pizzas.pizza_type_id = pizza_types.pizza_type_id 
order by price desc limit 1;