-- Create database
CREATE DATABASE paractice;
USE paractice;

-- Customer Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    City VARCHAR(50),
    SignupDate DATE
);

-- Product Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data
INSERT INTO Customers (Name, City, SignupDate) VALUES
('Shantanu Dhara', 'Kolkata', '2024-01-05'),
('Rumela Das', 'Delhi', '2024-03-15'),
('Sourav Roy', 'Kolkata', '2024-02-20'),
('Priya Sen', 'Mumbai', '2024-04-10');

INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 55000.00),
('Mobile', 'Electronics', 25000.00),
('Shoes', 'Fashion', 2000.00),
('T-Shirt', 'Fashion', 800.00);

INSERT INTO Orders (CustomerID, ProductID, OrderDate, Quantity) VALUES
(1, 1, '2024-03-10', 1),
(1, 3, '2024-03-12', 2),
(2, 2, '2024-04-05', 1),
(3, 4, '2024-05-08', 3),
(4, 1, '2024-05-20', 1);
