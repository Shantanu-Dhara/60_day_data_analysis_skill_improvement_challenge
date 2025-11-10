SELECT * FROM subquery_paractice.orders;

-- 01) Find customers who ordered at least one product from the ‘Fashion’ category.

-- by join
select customers.Name from customers 
inner join orders on customers.CustomerID = orders.CustomerID
inner join products on orders.ProductID = products.ProductID
where Category = "Fashion";

-- by subquery
select customers.Name from customers
where customers.CustomerID in (
select distinct orders.CustomerID from orders
where orders.ProductID in (
select products.ProductID from products 
where products.Category = "Fashion"));
 

