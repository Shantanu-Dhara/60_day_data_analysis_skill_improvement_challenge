-- 02) Find the product(s) with the highest price.

SELECT ProductName, Price
FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
