-- Exists
-- Find customers who have placed at least one order.

select customers.Name, customers.City from customers 
where exists (
select 1
from orders 
where customers.CustomerID = orders.CustomerID);

-- Q1) Find customers who never placed an order (use NOT EXISTS).
select customers.Name from customers
where not exists (
select 1
from orders
where customers.CustomerID = orders.CustomerID);

-- The output is empty because there was no such customers