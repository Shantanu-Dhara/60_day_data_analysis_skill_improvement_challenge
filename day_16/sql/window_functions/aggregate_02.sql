-- Q2. Find average product price per category beside each product.

select Category, ProductName, ProductID,
avg(Price) over(partition by Category) as a
from products;

-- select Category,
-- count(Price) over(partition by Category) as total_count_category_wise
-- from products;
