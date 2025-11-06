-- Problem 1068. Product Sales Analysis I

select Product.product_name, Sales.year,Sales.price from Product right join Sales
on Product.product_id = Sales.product_id;
-- -- _______________________________