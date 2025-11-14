-- 03) Use a CTE to show each product’s total sales amount (Price × Quantity).

with total_sales as (
select products.ProductName, sum(products.Price * orders.Quantity)
from products join orders on products.ProductID = orders.ProductID 
group by products.ProductName)
select * from total_sales;


