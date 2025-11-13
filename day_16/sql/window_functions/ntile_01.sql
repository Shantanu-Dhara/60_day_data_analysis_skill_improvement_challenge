-- Q1. Divide products into 2 price groups.

select ProductName, Category, Price,
ntile(2) over (order by Price desc) as Price_Group
from products;
