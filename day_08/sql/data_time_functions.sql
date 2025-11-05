-- Day Since Order 
SELECT OrderID, DATEDIFF(CURDATE(), OrderDate) AS Days_Since_Order
FROM Orders;

-- Q1) Give the name of the customers who signed up in march 2024.
SELECT Name, SignupDate
FROM Customers
WHERE MONTH(SignupDate) = 3 AND YEAR(SignupDate) = 2024;

-- Q2) Give everything from customers table who signed up in first month of 2024.
select * from customers 
where month(SignupDate) = 1 and year(SignupDate) = 2024;
