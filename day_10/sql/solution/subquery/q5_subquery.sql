-- 05) Find total spending of each customer using a subquery.

SELECT 
    C.Name,
    (SELECT SUM(P.Price * O.Quantity)
     FROM Orders O
     JOIN Products P ON O.ProductID = P.ProductID
     WHERE O.CustomerID = C.CustomerID) AS Total_Spent
FROM Customers C;
