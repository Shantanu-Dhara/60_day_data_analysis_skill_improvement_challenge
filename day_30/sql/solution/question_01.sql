-- 01) Show all orders with customer, product, price & total value

SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    p.ProductName,
    p.Price,
    o.Quantity,
    (p.Price * o.Quantity) AS TotalOrderValue
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON o.ProductID = p.ProductID;