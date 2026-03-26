DROP DATABASE IF EXISTS `ultimate_sql_lerning`;
CREATE DATABASE `ultimate_sql_lerning`;
USE `ultimate_sql_lerning`;


CREATE TABLE categories (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);


CREATE TABLE suppliers (
  supplier_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  contact_email VARCHAR(150),
  phone VARCHAR(30),
  address VARCHAR(255)
);


CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  category_id INT,
  supplier_id INT,
  price DECIMAL(10,2),
  stock INT,
  created_at DATE,
  FOREIGN KEY (category_id) REFERENCES categories(category_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);


CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(80),
  last_name VARCHAR(80),
  email VARCHAR(150),
  phone VARCHAR(30),
  city VARCHAR(100),
  created_at DATE
);


CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120),
  role VARCHAR(100),
  hired_date DATE
);


CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  employee_id INT,
  order_date DATE,
  status VARCHAR(30),
  total_amount DECIMAL(12,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);


CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  unit_price DECIMAL(10,2),
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);


CREATE TABLE payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  amount DECIMAL(12,2),
  method VARCHAR(50),
  status VARCHAR(30),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Accessories');
INSERT INTO categories (name) VALUES ('Audio');
INSERT INTO categories (name) VALUES ('Wearables');
INSERT INTO categories (name) VALUES ('Storage');
INSERT INTO categories (name) VALUES ('Peripherals');
INSERT INTO categories (name) VALUES ('Camera');
INSERT INTO categories (name) VALUES ('Home Appliances');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Alpha Distributors', 'alpha.distributors@example.com', '+919000000000', '1 Supplier Lane, City 1');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Beta Traders', 'beta.traders@example.com', '+919001111111', '2 Supplier Lane, City 2');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Gamma Imports', 'gamma.imports@example.com', '+919002222222', '3 Supplier Lane, City 3');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Delta Wholesales', 'delta.wholesales@example.com', '+919003333333', '4 Supplier Lane, City 4');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Epsilon Suppliers', 'epsilon.suppliers@example.com', '+919004444444', '5 Supplier Lane, City 5');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Zeta Global', 'zeta.global@example.com', '+919005555555', '6 Supplier Lane, City 6');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Eta Exports', 'eta.exports@example.com', '+919006666666', '7 Supplier Lane, City 7');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Theta Enterprises', 'theta.enterprises@example.com', '+919007777777', '8 Supplier Lane, City 8');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Iota Retailers', 'iota.retailers@example.com', '+919008888888', '9 Supplier Lane, City 9');
INSERT INTO suppliers (name, contact_email, phone, address) VALUES ('Kappa Logistics', 'kappa.logistics@example.com', '+919009999999', '10 Supplier Lane, City 10');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Bluetooth Speaker', 1, 1, 32078.51, 12, '2023-07-18');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Wireless Mouse', 2, 2, 12470.13, 71, '2022-07-29');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('USB-C Cable', 3, 3, 33930.96, 456, '2025-01-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Laptop Stand', 4, 4, 4619.86, 216, '2022-03-07');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Noise Cancelling Headphones', 5, 5, 1779.92, 111, '2023-04-22');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Gaming Mouse', 6, 6, 25415.16, 13, '2025-02-23');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Mechanical Keyboard', 7, 7, 10181.23, 332, '2025-12-07');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Webcam 1080p', 8, 8, 27382.59, 112, '2024-07-08');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('External SSD 1TB', 1, 9, 29585.5, 414, '2022-01-14');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Portable Charger 20000mAh', 2, 10, 38011.73, 81, '2025-11-30');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Smartwatch Pro', 3, 1, 21302.94, 142, '2022-11-15');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Fitness Band', 4, 2, 11000.09, 390, '2023-11-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('HDMI Cable 2m', 5, 3, 5378.85, 194, '2022-07-18');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Monitor 24 inch', 6, 4, 18140.28, 176, '2025-05-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Desk Lamp LED', 7, 5, 13445.69, 22, '2024-07-29');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Wireless Earbuds', 8, 6, 26949.54, 498, '2024-02-15');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Router AX3000', 1, 7, 4215.37, 150, '2025-07-11');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Microphone USB', 2, 8, 31039.43, 441, '2024-01-11');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Graphics Tablet', 3, 9, 28993.4, 360, '2022-05-23');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Projector Mini', 4, 10, 2576.47, 116, '2023-08-16');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Action Camera', 5, 1, 49264.51, 437, '2023-04-22');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('DSLR Camera', 6, 2, 43363.24, 194, '2023-07-24');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Tripod Stand', 7, 3, 22833.49, 427, '2024-01-18');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Memory Card 128GB', 8, 4, 8382.91, 181, '2023-03-06');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Smartphone Case', 1, 5, 33606.71, 359, '2025-10-31');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Screen Protector', 2, 6, 32506.36, 311, '2025-07-24');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Stylus Pen', 3, 7, 8804.59, 373, '2023-05-17');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Power Bank 10000mAh', 4, 8, 8420.1, 194, '2023-07-07');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('VR Headset', 5, 9, 49478.31, 327, '2025-11-10');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Smart Home Hub', 6, 10, 27979.4, 350, '2023-10-27');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Electric Kettle', 7, 1, 42188.74, 397, '2022-04-25');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Air Purifier', 8, 2, 11682.69, 16, '2023-10-09');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Coffee Maker', 1, 3, 20236.89, 33, '2023-03-09');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Blender Mixer', 2, 4, 45681.87, 290, '2023-10-07');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Steam Iron', 3, 5, 10866.54, 255, '2024-03-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Electric Toothbrush', 4, 6, 44267.75, 329, '2024-07-28');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Water Bottle', 5, 7, 7399.72, 71, '2023-05-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Backpack 20L', 6, 8, 37324.95, 275, '2023-06-23');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Travel Adapter', 7, 9, 37425.59, 219, '2025-04-10');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('SD Card Reader', 8, 10, 20149.21, 112, '2022-10-11');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('LED Strip 5m', 1, 1, 25622.46, 46, '2022-04-07');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Portable Fan', 2, 2, 43095.81, 78, '2025-07-09');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Wireless Charger', 3, 3, 8250.11, 348, '2024-05-14');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Car Charger', 4, 4, 29940.53, 197, '2024-02-21');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Gaming Chair', 5, 5, 29914.65, 239, '2024-12-19');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Office Chair Ergonomic', 6, 6, 12794.28, 283, '2022-01-24');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Mouse Pad XL', 7, 7, 34109.09, 58, '2025-10-28');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Laptop Sleeve 15in', 8, 8, 44272.99, 384, '2023-07-01');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('Bluetooth Keyboard', 1, 9, 38498.36, 174, '2022-08-17');
INSERT INTO products (name, category_id, supplier_id, price, stock, created_at) VALUES ('USB Hub 4-Port', 2, 10, 14885.96, 80, '2024-07-18');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Aarav', 'Chatterjee', 'aarav.chatterjee0@mail.com', '+917000000000', 'Jaipur', '2025-04-10');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Rohit', 'Mehta', 'rohit.mehta1@mail.com', '+917000012345', 'Mumbai', '2025-11-18');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Sana', 'Ghosh', 'sana.ghosh2@mail.com', '+917000024690', 'Jaipur', '2024-06-01');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Anushka', 'Gupta', 'anushka.gupta3@mail.com', '+917000037035', 'Hyderabad', '2025-04-11');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Rohit', 'Jain', 'rohit.jain4@mail.com', '+917000049380', 'Jaipur', '2021-01-02');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Rajat', 'Mishra', 'rajat.mishra5@mail.com', '+917000061725', 'Ahmedabad', '2021-02-09');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Arjun', 'Nair', 'arjun.nair6@mail.com', '+917000074070', 'Bengaluru', '2022-05-06');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Vivaan', 'Roy', 'vivaan.roy7@mail.com', '+917000086415', 'Lucknow', '2021-06-11');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Aditya', 'Kohli', 'aditya.kohli8@mail.com', '+917000098760', 'Mumbai', '2025-04-07');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Maya', 'Gupta', 'maya.gupta9@mail.com', '+917000111105', 'Delhi', '2024-09-13');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Dev', 'Jain', 'dev.jain10@mail.com', '+917000123450', 'Delhi', '2022-06-27');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Kabir', 'Verma', 'kabir.verma11@mail.com', '+917000135795', 'Pune', '2022-03-10');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Ritu', 'Jain', 'ritu.jain12@mail.com', '+917000148140', 'Chennai', '2024-12-31');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Neha', 'Iyer', 'neha.iyer13@mail.com', '+917000160485', 'Hyderabad', '2023-06-17');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Saurav', 'Mehta', 'saurav.mehta14@mail.com', '+917000172830', 'Ahmedabad', '2021-09-05');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Priya', 'Roy', 'priya.roy15@mail.com', '+917000185175', 'Mumbai', '2022-11-24');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Aarav', 'Kapoor', 'aarav.kapoor16@mail.com', '+917000197520', 'Jaipur', '2022-04-17');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Om', 'Roy', 'om.roy17@mail.com', '+917000209865', 'Kolkata', '2021-05-26');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Vikram', 'Patel', 'vikram.patel18@mail.com', '+917000222210', 'Chennai', '2021-05-19');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Saurav', 'Patel', 'saurav.patel19@mail.com', '+917000234555', 'Hyderabad', '2021-05-26');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Kabir', 'Roy', 'kabir.roy20@mail.com', '+917000246900', 'Bengaluru', '2024-10-02');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Dev', 'Bose', 'dev.bose21@mail.com', '+917000259245', 'Jaipur', '2021-09-28');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Nisha', 'Kapoor', 'nisha.kapoor22@mail.com', '+917000271590', 'Lucknow', '2023-08-27');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Priya', 'Kohli', 'priya.kohli23@mail.com', '+917000283935', 'Pune', '2022-01-25');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Arjun', 'Kumar', 'arjun.kumar24@mail.com', '+917000296280', 'Pune', '2022-12-27');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Tanvi', 'Reddy', 'tanvi.reddy25@mail.com', '+917000308625', 'Ahmedabad', '2025-11-05');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Nisha', 'Patel', 'nisha.patel26@mail.com', '+917000320970', 'Mumbai', '2021-05-05');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Ishaan', 'Mishra', 'ishaan.mishra27@mail.com', '+917000333315', 'Mumbai', '2022-05-25');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Anushka', 'Bose', 'anushka.bose28@mail.com', '+917000345660', 'Jaipur', '2023-07-08');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Sai', 'Reddy', 'sai.reddy29@mail.com', '+917000358005', 'Delhi', '2022-07-25');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Aisha', 'Roy', 'aisha.roy30@mail.com', '+917000370350', 'Mumbai', '2023-06-27');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Pooja', 'Jain', 'pooja.jain31@mail.com', '+917000382695', 'Mumbai', '2021-04-14');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Sana', 'Jain', 'sana.jain32@mail.com', '+917000395040', 'Kolkata', '2021-07-11');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Ritu', 'Roy', 'ritu.roy33@mail.com', '+917000407385', 'Delhi', '2023-04-13');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Dev', 'Kohli', 'dev.kohli34@mail.com', '+917000419730', 'Chennai', '2025-11-06');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Ishaan', 'Patel', 'ishaan.patel35@mail.com', '+917000432075', 'Delhi', '2023-02-16');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Aarav', 'Iyer', 'aarav.iyer36@mail.com', '+917000444420', 'Bengaluru', '2025-05-25');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Pooja', 'Khan', 'pooja.khan37@mail.com', '+917000456765', 'Bengaluru', '2023-05-17');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Vikram', 'Jain', 'vikram.jain38@mail.com', '+917000469110', 'Ahmedabad', '2021-11-14');
INSERT INTO customers (first_name, last_name, email, phone, city, created_at) VALUES ('Anushka', 'Ghosh', 'anushka.ghosh39@mail.com', '+917000481455', 'Chennai', '2021-04-30');
INSERT INTO employees (name, role, hired_date) VALUES ('Rahul', 'Delivery', '2024-01-30');
INSERT INTO employees (name, role, hired_date) VALUES ('Sonal', 'Sales Rep', '2021-07-08');
INSERT INTO employees (name, role, hired_date) VALUES ('Amit', 'Sales Rep', '2018-07-25');
INSERT INTO employees (name, role, hired_date) VALUES ('Priya', 'Delivery', '2023-05-07');
INSERT INTO employees (name, role, hired_date) VALUES ('Rakesh', 'Delivery', '2023-12-16');
INSERT INTO employees (name, role, hired_date) VALUES ('Geeta', 'Manager', '2018-08-21');
INSERT INTO employees (name, role, hired_date) VALUES ('Kunal', 'Delivery', '2018-11-25');
INSERT INTO employees (name, role, hired_date) VALUES ('Neelam', 'Manager', '2018-10-08');
INSERT INTO employees (name, role, hired_date) VALUES ('Siddharth', 'Delivery', '2018-10-06');
INSERT INTO employees (name, role, hired_date) VALUES ('Shruti', 'Accountant', '2020-08-21');
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (26, 2, '2025-03-12', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (39, 1, '2025-06-22', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (38, 10, '2024-12-06', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (17, 4, '2025-10-03', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (16, 5, '2024-03-21', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (20, 8, '2023-10-10', 'Cancelled', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (5, 1, '2024-07-27', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (37, 2, '2022-05-31', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (33, 5, '2022-09-29', 'Cancelled', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (5, 4, '2024-01-27', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (29, 9, '2025-12-11', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (34, 1, '2025-09-29', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (20, 2, '2022-10-03', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (7, 9, '2022-11-15', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (39, 4, '2023-12-04', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (17, 9, '2024-09-27', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (4, 2, '2025-07-23', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (18, 1, '2022-01-08', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (9, 5, '2022-11-27', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (36, 7, '2025-02-22', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (5, 3, '2025-01-22', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (24, 10, '2025-02-05', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (9, 1, '2023-09-24', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (3, 6, '2023-03-07', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (7, 6, '2025-02-20', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 10, '2022-11-13', 'Cancelled', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (16, 3, '2022-12-29', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (2, 3, '2023-11-12', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 4, '2023-07-01', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (7, 7, '2022-03-21', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (15, 4, '2024-07-31', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (15, 4, '2022-02-18', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (26, 6, '2023-07-25', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (18, 6, '2025-08-06', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (35, 6, '2022-02-26', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (17, 3, '2025-04-04', 'Returned', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (17, 1, '2022-08-11', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (23, 6, '2024-06-12', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (33, 2, '2024-02-28', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (13, 5, '2022-04-01', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (1, 9, '2025-01-07', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (13, 6, '2024-06-02', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (22, 10, '2023-10-05', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (8, 5, '2024-11-04', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 6, '2024-04-04', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (36, 3, '2023-01-28', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (25, 3, '2025-06-14', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (26, 9, '2022-01-01', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (14, 7, '2025-04-02', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (21, 8, '2024-06-23', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (14, 9, '2024-08-27', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (11, 2, '2023-08-05', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (40, 6, '2022-07-11', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (16, 5, '2023-04-06', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (10, 1, '2022-04-05', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (31, 10, '2022-05-30', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (37, 4, '2025-11-27', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (26, 4, '2022-10-30', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (1, 2, '2024-05-20', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (34, 8, '2022-04-13', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (8, 8, '2022-10-01', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (34, 9, '2025-05-04', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (29, 10, '2024-10-30', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (36, 8, '2022-11-22', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (31, 8, '2023-06-15', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (18, 9, '2024-09-19', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (18, 8, '2022-06-08', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (16, 5, '2023-11-19', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (35, 2, '2022-10-11', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (25, 3, '2025-12-17', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 7, '2023-11-09', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 1, '2023-02-28', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (25, 10, '2025-11-25', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (37, 7, '2024-09-03', 'Pending', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (23, 5, '2024-03-09', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (27, 9, '2025-01-23', 'Delivered', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (15, 8, '2023-03-26', 'Processing', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (32, 1, '2024-03-07', 'Shipped', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (26, 3, '2024-08-15', 'Cancelled', 0.00);
INSERT INTO orders (customer_id, employee_id, order_date, status, total_amount) VALUES (40, 9, '2022-02-25', 'Cancelled', 0.00);
UPDATE orders SET total_amount = 51560.88 WHERE order_id = 1;
UPDATE orders SET total_amount = 402082.76 WHERE order_id = 2;
UPDATE orders SET total_amount = 196944.26 WHERE order_id = 3;
UPDATE orders SET total_amount = 151678.92 WHERE order_id = 4;
UPDATE orders SET total_amount = 122789.02 WHERE order_id = 5;
UPDATE orders SET total_amount = 230805.26 WHERE order_id = 6;
UPDATE orders SET total_amount = 285791.71 WHERE order_id = 7;
UPDATE orders SET total_amount = 310933.92 WHERE order_id = 8;
UPDATE orders SET total_amount = 141603.62 WHERE order_id = 9;
UPDATE orders SET total_amount = 274304.92 WHERE order_id = 10;
UPDATE orders SET total_amount = 326618.55 WHERE order_id = 11;
UPDATE orders SET total_amount = 280934.09 WHERE order_id = 12;
UPDATE orders SET total_amount = 43052.78 WHERE order_id = 13;
UPDATE orders SET total_amount = 165753.98 WHERE order_id = 14;
UPDATE orders SET total_amount = 25662.6 WHERE order_id = 15;
UPDATE orders SET total_amount = 92187.04 WHERE order_id = 16;
UPDATE orders SET total_amount = 150613.32 WHERE order_id = 17;
UPDATE orders SET total_amount = 150669.38 WHERE order_id = 18;
UPDATE orders SET total_amount = 144157.81 WHERE order_id = 19;
UPDATE orders SET total_amount = 38411.33 WHERE order_id = 20;
UPDATE orders SET total_amount = 48728.15 WHERE order_id = 21;
UPDATE orders SET total_amount = 162612.48 WHERE order_id = 22;
UPDATE orders SET total_amount = 247289.87 WHERE order_id = 23;
UPDATE orders SET total_amount = 231421.04 WHERE order_id = 24;
UPDATE orders SET total_amount = 192415.3 WHERE order_id = 25;
UPDATE orders SET total_amount = 121194.0 WHERE order_id = 26;
UPDATE orders SET total_amount = 145810.52 WHERE order_id = 27;
UPDATE orders SET total_amount = 172609.16 WHERE order_id = 28;
UPDATE orders SET total_amount = 327479.82 WHERE order_id = 29;
UPDATE orders SET total_amount = 116731.99 WHERE order_id = 30;
UPDATE orders SET total_amount = 32874.06 WHERE order_id = 31;
UPDATE orders SET total_amount = 225053.29 WHERE order_id = 32;
UPDATE orders SET total_amount = 284450.53 WHERE order_id = 33;
UPDATE orders SET total_amount = 232156.71 WHERE order_id = 34;
UPDATE orders SET total_amount = 175887.12 WHERE order_id = 35;
UPDATE orders SET total_amount = 412101.11 WHERE order_id = 36;
UPDATE orders SET total_amount = 11872.78 WHERE order_id = 37;
UPDATE orders SET total_amount = 351074.63 WHERE order_id = 38;
UPDATE orders SET total_amount = 29218.26 WHERE order_id = 39;
UPDATE orders SET total_amount = 13109.11 WHERE order_id = 40;
UPDATE orders SET total_amount = 170179.66 WHERE order_id = 41;
UPDATE orders SET total_amount = 128717.49 WHERE order_id = 42;
UPDATE orders SET total_amount = 186555.46 WHERE order_id = 43;
UPDATE orders SET total_amount = 46131.9 WHERE order_id = 44;
UPDATE orders SET total_amount = 15952.07 WHERE order_id = 45;
UPDATE orders SET total_amount = 210219.47 WHERE order_id = 46;
UPDATE orders SET total_amount = 80765.78 WHERE order_id = 47;
UPDATE orders SET total_amount = 150280.41 WHERE order_id = 48;
UPDATE orders SET total_amount = 160449.41 WHERE order_id = 49;
UPDATE orders SET total_amount = 176957.75 WHERE order_id = 50;
UPDATE orders SET total_amount = 98965.32 WHERE order_id = 51;
UPDATE orders SET total_amount = 49250.84 WHERE order_id = 52;
UPDATE orders SET total_amount = 276362.19 WHERE order_id = 53;
UPDATE orders SET total_amount = 372162.51 WHERE order_id = 54;
UPDATE orders SET total_amount = 43204.05 WHERE order_id = 55;
UPDATE orders SET total_amount = 213202.85 WHERE order_id = 56;
UPDATE orders SET total_amount = 68727.12 WHERE order_id = 57;
UPDATE orders SET total_amount = 69367.26 WHERE order_id = 58;
UPDATE orders SET total_amount = 275236.82 WHERE order_id = 59;
UPDATE orders SET total_amount = 101258.9 WHERE order_id = 60;
UPDATE orders SET total_amount = 295597.68 WHERE order_id = 61;
UPDATE orders SET total_amount = 24409.24 WHERE order_id = 62;
UPDATE orders SET total_amount = 294356.55 WHERE order_id = 63;
UPDATE orders SET total_amount = 91095.7 WHERE order_id = 64;
UPDATE orders SET total_amount = 194349.99 WHERE order_id = 65;
UPDATE orders SET total_amount = 26250.11 WHERE order_id = 66;
UPDATE orders SET total_amount = 72285.96 WHERE order_id = 67;
UPDATE orders SET total_amount = 120924.72 WHERE order_id = 68;
UPDATE orders SET total_amount = 304496.25 WHERE order_id = 69;
UPDATE orders SET total_amount = 33225.48 WHERE order_id = 70;
UPDATE orders SET total_amount = 56050.89 WHERE order_id = 71;
UPDATE orders SET total_amount = 333361.85 WHERE order_id = 72;
UPDATE orders SET total_amount = 71339.6 WHERE order_id = 73;
UPDATE orders SET total_amount = 190985.42 WHERE order_id = 74;
UPDATE orders SET total_amount = 56050.02 WHERE order_id = 75;
UPDATE orders SET total_amount = 75516.6 WHERE order_id = 76;
UPDATE orders SET total_amount = 258634.37 WHERE order_id = 77;
UPDATE orders SET total_amount = 73112.71 WHERE order_id = 78;
UPDATE orders SET total_amount = 104537.61 WHERE order_id = 79;
UPDATE orders SET total_amount = 127006.7 WHERE order_id = 80;

INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (1, 6, 25780.44, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (2, 21, 8623.08, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (2, 22, 30495.94, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (2, 18, 30128.99, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (2, 17, 33428.45, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (3, 15, 26074.73, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (3, 49, 1433.99, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (3, 13, 33600.31, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (4, 37, 37919.73, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (5, 39, 24367.45, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (5, 50, 32807.19, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (6, 26, 37669.53, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (6, 5, 23764.49, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (6, 7, 27947.28, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (6, 44, 24095.38, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (7, 43, 14947.72, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (7, 42, 13780.0, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (7, 32, 4399.45, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (7, 41, 35683.69, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (8, 40, 32365.33, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (8, 50, 19442.2, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (8, 47, 23779.49, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (9, 29, 9904.76, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (9, 37, 24490.2, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (9, 22, 1341.26, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (10, 22, 11329.41, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (10, 45, 35227.27, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (10, 1, 20760.76, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (11, 36, 30373.95, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (11, 42, 28530.33, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (11, 2, 3902.52, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (11, 26, 27732.13, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (12, 28, 39864.93, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (12, 22, 14201.06, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (12, 18, 12402.6, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (13, 48, 21526.39, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (14, 47, 23664.56, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (14, 39, 11462.35, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (14, 13, 11989.61, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (15, 18, 2010.52, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (15, 36, 11826.04, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (16, 1, 23046.76, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (17, 17, 37653.33, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (18, 5, 23164.44, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (18, 10, 6137.06, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (18, 20, 3589.2, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (18, 8, 22410.31, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (19, 50, 20997.39, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (19, 29, 12033.65, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (20, 40, 38411.33, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (21, 11, 9745.63, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (22, 45, 23832.69, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (22, 3, 9411.75, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (22, 45, 34411.35, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (22, 44, 9489.27, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (23, 8, 21872.58, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (23, 18, 33098.92, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (23, 4, 6802.73, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (23, 39, 30007.52, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (24, 45, 16218.84, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (24, 33, 21690.27, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (24, 6, 24000.86, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (25, 15, 38483.06, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (26, 49, 30298.5, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (27, 38, 17547.22, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (27, 6, 18905.41, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (28, 22, 16582.47, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (28, 19, 26569.82, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (29, 8, 38812.35, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (29, 33, 33031.1, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (29, 43, 34799.83, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (30, 41, 17792.23, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (30, 14, 10827.84, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (30, 19, 17636.02, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (30, 8, 1348.0, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (31, 36, 16437.03, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (32, 32, 37318.59, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (32, 33, 28274.38, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (33, 36, 5955.75, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (33, 39, 20426.99, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (33, 5, 11193.65, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (33, 22, 37382.09, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (34, 38, 23279.95, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (34, 10, 17971.59, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (34, 23, 13430.11, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (35, 45, 9703.46, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (35, 15, 34268.32, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (36, 25, 39537.88, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (36, 32, 38599.01, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (36, 33, 38620.07, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (36, 7, 34991.78, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (37, 47, 5936.39, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (38, 40, 27768.64, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (38, 22, 34122.19, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (38, 25, 38173.76, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (39, 48, 3796.1, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (39, 49, 25422.16, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (40, 3, 13109.11, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (41, 16, 21339.42, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (41, 44, 31741.28, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (42, 32, 36529.59, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (42, 15, 18552.77, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (43, 19, 27167.91, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (43, 5, 17779.85, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (43, 38, 12105.34, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (43, 45, 10152.91, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (44, 16, 15377.3, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (45, 43, 15952.07, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (46, 19, 31073.49, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (46, 39, 32115.89, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (46, 41, 7766.25, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (46, 44, 30270.98, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (47, 29, 1526.91, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (47, 47, 5429.19, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (47, 21, 29948.74, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (48, 11, 10426.41, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (48, 19, 29912.06, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (48, 8, 18838.59, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (49, 36, 14756.85, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (49, 1, 10724.45, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (49, 30, 14868.71, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (49, 38, 15363.81, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (50, 40, 35391.55, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (51, 41, 32988.44, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (52, 3, 12312.71, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (53, 30, 14965.26, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (53, 27, 23575.15, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (53, 27, 26264.89, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (53, 40, 16442.01, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (54, 29, 38031.1, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (54, 7, 39239.92, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (54, 35, 36086.51, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (54, 4, 16044.96, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (55, 43, 8640.81, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (56, 5, 33225.75, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (56, 14, 23537.05, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (57, 18, 34363.56, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (58, 43, 34683.63, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (59, 2, 7134.0, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (59, 9, 29719.38, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (59, 8, 29876.48, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (60, 29, 20251.78, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (61, 30, 25803.96, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (61, 4, 39942.75, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (61, 28, 27505.68, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (62, 21, 24409.24, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (63, 25, 39785.18, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (63, 19, 18256.87, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (63, 28, 4146.3, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (64, 28, 18170.89, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (64, 27, 13688.48, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (65, 28, 12637.44, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (65, 24, 38151.98, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (65, 5, 3829.75, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (66, 36, 2586.24, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (66, 36, 13318.91, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (67, 19, 24095.32, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (68, 43, 19390.14, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (68, 23, 33844.86, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (69, 28, 33836.18, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (69, 40, 27063.07, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (70, 12, 11075.16, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (71, 37, 26361.32, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (71, 10, 29689.57, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (72, 27, 18254.1, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (72, 24, 12602.17, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (72, 50, 37667.02, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (72, 6, 35356.02, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (73, 18, 17834.9, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (74, 14, 30245.74, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (74, 23, 17309.56, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (74, 44, 27202.75, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (75, 26, 39379.94, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (75, 1, 8335.04, 2);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (76, 8, 506.65, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (76, 12, 5340.59, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (76, 46, 9357.41, 5);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (77, 48, 1882.63, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (77, 30, 36861.26, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (77, 37, 17284.51, 4);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (77, 46, 25676.64, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (78, 40, 18510.86, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (78, 6, 17580.13, 1);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (79, 26, 34845.87, 3);
INSERT INTO order_items (order_id, product_id, unit_price, quantity) VALUES (80, 33, 25401.34, 5);

INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (1, '2024-08-03', 51560.88, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (2, '2022-02-09', 402082.76, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (3, '2022-11-09', 196944.26, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (4, '2025-12-03', 151678.92, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (5, '2022-08-10', 122789.02, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (6, '2025-03-05', 230805.26, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (7, '2025-12-19', 285791.71, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (8, '2023-05-18', 310933.92, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (9, '2023-01-08', 141603.62, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (10, '2022-06-25', 274304.92, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (11, '2025-09-21', 326618.55, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (12, '2022-09-05', 280934.09, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (13, '2023-01-28', 43052.78, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (14, '2023-01-03', 165753.98, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (15, '2025-07-30', 25662.6, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (16, '2024-09-07', 92187.04, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (17, '2022-08-22', 150613.32, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (18, '2025-05-26', 150669.38, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (19, '2024-05-28', 144157.81, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (20, '2023-03-02', 38411.33, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (21, '2022-06-03', 48728.15, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (22, '2025-07-04', 162612.48, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (23, '2023-08-15', 247289.87, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (24, '2023-10-23', 231421.04, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (25, '2025-04-17', 192415.3, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (26, '2024-11-28', 121194.0, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (27, '2023-11-14', 145810.52, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (28, '2025-01-31', 43641.79, 'UPI', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (29, '2024-04-26', 167363.03, 'Wallet', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (30, '2023-05-06', 116731.99, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (31, '2022-08-21', 32874.06, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (32, '2024-09-15', 225053.29, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (33, '2023-07-02', 284450.53, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (34, '2024-02-12', 232156.71, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (35, '2022-03-31', 175887.12, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (36, '2022-07-24', 412101.11, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (37, '2022-06-03', 11872.78, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (38, '2025-01-13', 84627.4, 'UPI', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (39, '2024-06-27', 29218.26, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (40, '2023-08-24', 13109.11, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (41, '2022-12-25', 122955.44, 'Wallet', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (42, '2024-07-30', 128717.49, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (43, '2023-02-12', 186555.46, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (44, '2025-03-23', 46131.9, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (45, '2025-03-05', 15952.07, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (46, '2025-07-10', 121186.24, 'Card', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (47, '2023-02-16', 42292.57, 'UPI', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (48, '2022-10-16', 150280.41, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (49, '2022-08-10', 160449.41, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (50, '2023-11-03', 176957.75, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (51, '2025-08-22', 98965.32, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (52, '2022-08-26', 36069.13, 'Netbanking', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (53, '2022-03-09', 276362.19, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (54, '2022-09-08', 372162.51, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (55, '2022-02-13', 17286.18, 'Netbanking', 'Partial');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (56, '2023-11-04', 213202.85, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (57, '2022-09-24', 68727.12, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (58, '2022-01-31', 69367.26, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (59, '2024-07-07', 275236.82, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (60, '2022-03-30', 101258.9, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (61, '2025-12-29', 295597.68, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (62, '2022-09-16', 24409.24, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (63, '2025-09-02', 294356.55, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (64, '2024-03-27', 91095.7, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (65, '2022-07-10', 194349.99, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (66, '2024-04-21', 26250.11, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (67, '2022-08-01', 72285.96, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (68, '2022-08-24', 120924.72, 'Wallet', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (69, '2022-02-23', 304496.25, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (70, '2023-11-27', 33225.48, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (71, '2022-07-07', 56050.89, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (72, '2022-11-19', 333361.85, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (73, '2024-09-21', 71339.6, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (74, '2024-12-15', 190985.42, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (75, '2022-10-09', 56050.02, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (76, '2025-09-30', 75516.6, 'Card', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (77, '2022-08-24', 258634.37, 'UPI', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (78, '2023-05-14', 73112.71, 'Cash', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (79, '2023-03-30', 104537.61, 'Netbanking', 'Completed');
INSERT INTO payments (order_id, payment_date, amount, method, status) VALUES (80, '2024-11-10', 127006.7, 'UPI', 'Completed');

-- Helpful sample queries for practice:
-- 1) Select top 5 customers by total spending:
--    SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) total_spent
--    FROM customers c JOIN orders o ON c.customer_id = o.customer_id
--    GROUP BY c.customer_id ORDER BY total_spent DESC LIMIT 5;
-- 2) Find low stock products:
--    SELECT * FROM products WHERE stock < 20;
-- 3) Orders in last 30 days:
--    SELECT * FROM orders WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
-- 4) Join orders with order_items and products for an order:
--    SELECT o.order_id, p.name, oi.quantity, oi.unit_price FROM orders o JOIN order_items oi ON o.order_id = oi.order_id JOIN products p ON oi.product_id = p.product_id WHERE o.order_id = 1;
-- 5) Use window function example (MySQL 8+):
--    SELECT customer_id, order_id, total_amount, RANK() OVER (PARTITION BY customer_id ORDER BY order_date DESC) rk FROM orders;
