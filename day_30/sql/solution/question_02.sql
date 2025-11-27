-- 02) List customers who never placed an order

SELECT 
    c.CustomerID,
    c.Name,
    c.City
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


