-- 01) Find customers who ordered at least one product from the ‘Fashion’ category.

SELECT Name
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders
    WHERE ProductID IN (
        SELECT ProductID FROM Products WHERE Category = 'Fashion'
    )
);
