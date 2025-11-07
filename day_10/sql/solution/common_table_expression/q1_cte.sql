-- 01) Use a CTE to calculate total quantity ordered by each customer.

WITH CustomerOrders AS (
    SELECT CustomerID, SUM(Quantity) AS Total_Quantity
    FROM Orders
    GROUP BY CustomerID
)
SELECT C.Name, CO.Total_Quantity
FROM CustomerOrders CO
JOIN Customers C ON CO.CustomerID = C.CustomerID;
