-- Q1. Rank products by their price (highest to lowest).

select ProductName, Category, Price,
rank() over(order by Price desc) as HighestPrice
from products;
