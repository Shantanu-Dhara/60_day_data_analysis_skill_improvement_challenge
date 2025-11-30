-- 02) List products priced between ₹1,000 and ₹30,000 (BETWEEN)

SELECT ProductName, Category, Price 
FROM Products
WHERE Price BETWEEN 1000 AND 30000;

