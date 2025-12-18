CREATE DATABASE IF NOT EXISTS femtosoft_sales;

USE femtosoft_sales;

CREATE TABLE IF NOT EXISTS products (
product_id INT PRIMARY KEY,
category VARCHAR(100),
unit_price DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS stores (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
region VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS sales (
sale_id INT AUTO_INCREMENT PRIMARY KEY,
sale_date DATE NOT NULL,
product_id INT NOT NULL,
store_id INT NOT NULL,
quantity INT,
price DECIMAL(10,2),
FOREIGN KEY (product_id) REFERENCES products(product_id)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (store_id) REFERENCES stores(store_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);