-- Q1. Rank products by their price (highest to lowest).

select ProductName, Category, Price,
dense_rank() over(order by Price desc) as HighestPrice
from products;

