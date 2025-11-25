-- 03) Identify Customers Who Have Placed More Than One Order (Subquery in WHERE)

SELECT Name
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    GROUP BY CustomerID
    HAVING COUNT(OrderID) > 1
);




