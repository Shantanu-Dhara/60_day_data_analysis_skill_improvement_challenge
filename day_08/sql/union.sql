-- create a list of all unique cities from customers and all categories from products.

-- (remove duplicates): union
select customers.City from customers
union all
select products.Category from products;

-- (keep duplicates): union all
select customers.City from customers
union all
select products.Category from products;
-- Q1) Combine all customer names and product names in one list (use UNION ALL). 
select customers.Name from customers 
union all
select products.ProductName from products;

