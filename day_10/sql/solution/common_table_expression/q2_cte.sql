-- 02) Find the most expensive order (based on total price per order).

WITH OrderTotals AS (
    SELECT 
        O.OrderID,
        SUM(P.Price * O.Quantity) AS OrderTotal
    FROM Orders O
    JOIN Products P ON O.ProductID = P.ProductID
    GROUP BY O.OrderID
)
SELECT * 
FROM OrderTotals
WHERE OrderTotal = (SELECT MAX(OrderTotal) FROM OrderTotals);
