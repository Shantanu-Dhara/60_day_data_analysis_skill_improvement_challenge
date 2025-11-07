-- 03) Find customers who signed up before any order was placed.
SELECT Name
FROM Customers
WHERE SignupDate < (
    SELECT MIN(OrderDate) FROM Orders
);
