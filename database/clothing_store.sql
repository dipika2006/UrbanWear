-- =========================
-- CREATE DATABASE
-- =========================
DROP DATABASE IF EXISTS urbanwear;
CREATE DATABASE urbanwear;
USE urbanwear;


-- =========================
-- USERS TABLE
-- =========================
CREATE TABLE IF NOT EXISTS Users (
                                     user_id INT AUTO_INCREMENT PRIMARY KEY,
                                     name VARCHAR(100) NOT NULL,
                                     email VARCHAR(100) UNIQUE NOT NULL,
                                     password VARCHAR(100) NOT NULL,
                                     role VARCHAR(20) NOT NULL
);

-- =========================
-- CATEGORIES TABLE
-- =========================
CREATE TABLE IF NOT EXISTS Categories (
                                          category_id INT AUTO_INCREMENT PRIMARY KEY,
                                          category_name VARCHAR(100) NOT NULL
);

-- =========================
-- PRODUCTS TABLE (FIXED ✔)
-- =========================
CREATE TABLE IF NOT EXISTS Products (
                                        product_id INT AUTO_INCREMENT PRIMARY KEY,
                                        name VARCHAR(100) NOT NULL,
                                        price DECIMAL(10,2) NOT NULL,
                                        category_id INT,
                                        discount DECIMAL(5,2) DEFAULT 0,
                                        image_url VARCHAR(255),
                                        FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- =========================
-- ORDERS TABLE
-- =========================
CREATE TABLE IF NOT EXISTS Orders (
                                      order_id INT AUTO_INCREMENT PRIMARY KEY,
                                      user_id INT,
                                      order_date DATE,
                                      total_amount DECIMAL(10,2),
                                      status VARCHAR(50),
                                      FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- =========================
-- ORDER ITEMS TABLE
-- =========================
CREATE TABLE IF NOT EXISTS OrderItems (
                                          order_item_id INT AUTO_INCREMENT PRIMARY KEY,
                                          order_id INT,
                                          product_id INT,
                                          quantity INT,
                                          price DECIMAL(10,2),
                                          FOREIGN KEY (order_id) REFERENCES Orders(order_id),
                                          FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- =========================
-- INSERT CATEGORIES
-- =========================
INSERT INTO Categories (category_name) VALUES
                                           ('Men'),
                                           ('Women'),
                                           ('Kids'),
                                           ('Unisex');

-- =========================
-- INSERT USERS
-- =========================
INSERT INTO Users (name, email, password, role) VALUES
                                                    ('Admin', 'admin@urbanwear.com', 'admin123', 'admin'),
                                                    ('Customer1', 'user@urbanwear.com', '1234', 'customer');

-- =========================
-- MEN PRODUCTS (10)
-- =========================
INSERT INTO Products (name, price, category_id, discount, image_url) VALUES
                                                                         ('Men T-Shirt', 1500, 1, 10, 'images/men1.jpg'),
                                                                         ('Men Jeans', 2500, 1, 5, 'images/men2.jpg'),
                                                                         ('Men Jacket', 4000, 1, 15, 'images/men3.jpg'),
                                                                         ('Men Hoodie', 3000, 1, 0, 'images/men4.jpg'),
                                                                         ('Men Shirt', 2000, 1, 8, 'images/men5.jpg'),
                                                                         ('Men Shorts', 1200, 1, 0, 'images/men6.jpg'),
                                                                         ('Men Sweater', 2800, 1, 12, 'images/men7.jpg'),
                                                                         ('Men Blazer', 5000, 1, 20, 'images/men8.jpg'),
                                                                         ('Men Track Pants', 2200, 1, 0, 'images/men9.jpg'),
                                                                         ('Men Kurta', 1800, 1, 5, 'images/men10.jpg');

-- =========================
-- WOMEN PRODUCTS (10)
-- =========================
INSERT INTO Products (name, price, category_id, discount, image_url) VALUES
                                                                         ('Women Dress', 3000, 2, 10, 'images/women1.jpg'),
                                                                         ('Women Top', 1500, 2, 5, 'images/women2.jpg'),
                                                                         ('Women Skirt', 2000, 2, 0, 'images/women3.jpg'),
                                                                         ('Women Jeans', 2800, 2, 12, 'images/women4.jpg'),
                                                                         ('Women Jacket', 3500, 2, 15, 'images/women5.jpg'),
                                                                         ('Women Saree', 5000, 2, 20, 'images/women6.jpg'),
                                                                         ('Women Kurti', 2200, 2, 8, 'images/women7.jpg'),
                                                                         ('Women Hoodie', 2700, 2, 0, 'images/women8.jpg'),
                                                                         ('Women Coat', 4500, 2, 10, 'images/women9.jpg'),
                                                                         ('Women Shorts', 1300, 2, 0, 'images/women10.jpg');

-- =========================
-- KIDS PRODUCTS (10)
-- =========================
INSERT INTO Products (name, price, category_id, discount, image_url) VALUES
                                                                         ('Kids T-Shirt', 800, 3, 5, 'images/kids1.jpg'),
                                                                         ('Kids Shorts', 700, 3, 0, 'images/kids2.jpg'),
                                                                         ('Kids Dress', 1200, 3, 10, 'images/kids3.jpg'),
                                                                         ('Kids Jacket', 2000, 3, 12, 'images/kids4.jpg'),
                                                                         ('Kids Sweater', 1500, 3, 0, 'images/kids5.jpg'),
                                                                         ('Kids Hoodie', 1800, 3, 8, 'images/kids6.jpg'),
                                                                         ('Kids Jeans', 1600, 3, 5, 'images/kids7.jpg'),
                                                                         ('Kids Shirt', 1000, 3, 0, 'images/kids8.jpg'),
                                                                         ('Kids Tracksuit', 2200, 3, 10, 'images/kids9.jpg'),
                                                                         ('Kids Pajama', 900, 3, 0, 'images/kids10.jpg');

-- =========================
-- UNISEX PRODUCTS (10)
-- =========================
INSERT INTO Products (name, price, category_id, discount, image_url) VALUES
                                                                         ('Unisex Hoodie', 3000, 4, 10, 'images/unisex1.jpg'),
                                                                         ('Unisex T-Shirt', 1400, 4, 5, 'images/unisex2.jpg'),
                                                                         ('Unisex Jacket', 3500, 4, 15, 'images/unisex3.jpg'),
                                                                         ('Unisex Sweater', 2500, 4, 0, 'images/unisex4.jpg'),
                                                                         ('Unisex Track Pants', 2000, 4, 8, 'images/unisex5.jpg'),
                                                                         ('Unisex Cap', 800, 4, 0, 'images/unisex6.jpg'),
                                                                         ('Unisex Shorts', 1200, 4, 5, 'images/unisex7.jpg'),
                                                                         ('Unisex Coat', 4000, 4, 12, 'images/unisex8.jpg'),
                                                                         ('Unisex Joggers', 2200, 4, 0, 'images/unisex9.jpg'),
                                                                         ('Unisex Sweatshirt', 2600, 4, 10, 'images/unisex10.jpg');

