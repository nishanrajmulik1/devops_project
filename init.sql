<<<<<<< HEAD
-- USER SERVICE DATABASE
CREATE DATABASE user_db;
USE user_db;
=======
-- USER SERVICE DATABASE AND TABLE
USE app_db;
>>>>>>> bacb81f (bugs fixed)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50), email VARCHAR(50) UNIQUE, password VARCHAR(100)
);
INSERT INTO users (name, email, password) VALUES ('Alice', 'alice@example.com', 'password123');

<<<<<<< HEAD
-- PRODUCT SERVICE DATABASE
CREATE DATABASE product_db;
USE product_db;
=======
-- PRODUCT SERVICE TABLE

>>>>>>> bacb81f (bugs fixed)
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50), price DECIMAL(10,2), stock INT
);
INSERT INTO products (name, price, stock) VALUES ('Laptop', 999.99, 10), ('Wireless Mouse', 25.50, 50);

<<<<<<< HEAD
-- ORDER SERVICE DATABASE
CREATE DATABASE order_db;
USE order_db;
=======
-- ORDER SERVICE DATABASE AND TABLE

>>>>>>> bacb81f (bugs fixed)
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT, product_id INT, product_name VARCHAR(50), total_price DECIMAL(10,2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);