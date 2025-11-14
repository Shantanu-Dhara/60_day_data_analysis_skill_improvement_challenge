-- 01) Use a CTE to calculate total quantity ordered by each customer.

-- way 1

with total_qty as (
select customers.Name, sum(orders.Quantity) as total_quantity
from orders
join Customers ON customers.CustomerID = orders.CustomerID
group by customers.Name)
select * from total_qty;

-- way_2
with total_qty as(
select customers.Name, sum(orders.Quantity) as total_quantity from customers
join orders on customers.CustomerID = orders.CustomerID group by customers.Name)
select * from total_qty where total_quantity > 2;
