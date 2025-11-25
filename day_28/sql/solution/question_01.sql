-- 01) Find Customers Whose Spending Is Above the Average (Subquery)

SELECT c.Name, SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.Name
HAVING SUM(p.Price * o.Quantity) > (
    SELECT AVG(t.Customer_Spend)
    FROM (
        SELECT SUM(p.Price * o.Quantity) AS Customer_Spend
        FROM Orders o
        JOIN Products p ON o.ProductID = p.ProductID
        GROUP BY o.CustomerID
    ) t
);


