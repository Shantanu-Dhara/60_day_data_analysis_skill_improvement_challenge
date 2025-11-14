-- 02) Find the product(s) with the highest price.

select products.ProductName, max(products.Price) from products group by ProductName;

select products.ProductName, products.Price from products where products.Price = (select max(products.Price) from products);