create database ecommerce_orders;
use ecommerce_orders;

-- Create Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(20),
    Quantity INT,
    Price DECIMAL(8,2),
    OrderDate DATE,
    Status VARCHAR(20)
);

-- Insert Data
INSERT INTO Orders (OrderID, CustomerName, Product, Category, Quantity, Price, OrderDate, Status)
VALUES
(1, 'Alice', 'Laptop', 'Electronics', 1, 800.00, '2025-12-01', 'Delivered'),
(2, 'Bob', 'Headphones', 'Electronics', 2, 150.00, '2025-12-02', 'Pending'),
(3, 'Charlie', 'T-shirt', 'Apparel', 3, 25.00, '2025-12-03', 'Delivered'),
(4, 'David', 'Smartphone', 'Electronics', 1, 600.00, '2025-12-04', 'Cancelled'),
(5, 'Eva', 'Shoes', 'Footwear', 2, 50.00, '2025-12-05', 'Delivered'),
(6, 'Frank', 'Watch', 'Accessories', 1, 120.00, '2025-12-06', 'Pending'),
(7, 'Grace', 'Laptop', 'Electronics', 1, 900.00, '2025-12-07', 'Delivered'),
(8, 'Henry', 'T-shirt', 'Apparel', 2, 20.00, '2025-12-08', 'Pending'),
(9, 'Ivy', 'Shoes', 'Footwear', 1, 55.00, '2025-12-09', 'Delivered'),
(10, 'John', 'Headphones', 'Electronics', 1, 100.00, '2025-12-10', 'Delivered');
