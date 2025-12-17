create database customers_orders;
use customers_orders;
-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Price DECIMAL(8,2),
    Quantity INT
);

-- Insert data
INSERT INTO Customers VALUES
(1, 'Alice', 'Kolkata'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Mumbai'),
(4, 'David', 'Chennai');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 80000, 1),
(102, 1, 'Mouse', 500, 2),
(103, 2, 'Headphones', 2000, 1);
