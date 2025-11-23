-- 04) Customers Who Purchased More Than 2 Total Items (Using HAVING)

SELECT 
    c.Name,
    SUM(o.Quantity) AS Total_Items
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Name
HAVING SUM(o.Quantity) > 2;

