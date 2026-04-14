-- =========================
-- CREATE DATABASE
-- =========================
DROP DATABASE IF EXISTS urbanwear;
CREATE DATABASE urbanwear;
USE urbanwear;

-- =========================
-- USERS TABLE
-- =========================
CREATE TABLE Users (
                       user_id INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) UNIQUE NOT NULL,
                       password VARCHAR(255) NOT NULL,   -- for encrypted password
                       role VARCHAR(20) NOT NULL DEFAULT 'customer',
                       is_approved BOOLEAN DEFAULT TRUE, -- for admin approval
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- CATEGORIES TABLE
-- =========================
CREATE TABLE Categories (
                            category_id INT AUTO_INCREMENT PRIMARY KEY,
                            category_name VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- PRODUCTS TABLE
-- =========================
CREATE TABLE Products (
                          product_id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100) NOT NULL,
                          price DECIMAL(10,2) NOT NULL,
                          category_id INT,
                          discount DECIMAL(5,2) DEFAULT 0,
                          stock INT DEFAULT 10,                -- IMPORTANT for business logic
                          image_url VARCHAR(255),
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

                          FOREIGN KEY (category_id)
                              REFERENCES Categories(category_id)
                              ON DELETE SET NULL
                              ON UPDATE CASCADE
);

-- =========================
-- ORDERS TABLE
-- =========================
CREATE TABLE Orders (
                        order_id INT AUTO_INCREMENT PRIMARY KEY,
                        user_id INT,
                        order_date DATE DEFAULT CURRENT_DATE,
                        total_amount DECIMAL(10,2),
                        status VARCHAR(50) DEFAULT 'Pending',

                        FOREIGN KEY (user_id)
                            REFERENCES Users(user_id)
                            ON DELETE CASCADE
                            ON UPDATE CASCADE
);

-- =========================
-- ORDER ITEMS TABLE
-- =========================
CREATE TABLE OrderItems (
                            order_item_id INT AUTO_INCREMENT PRIMARY KEY,
                            order_id INT,
                            product_id INT,
                            quantity INT NOT NULL,
                            price DECIMAL(10,2) NOT NULL,

                            FOREIGN KEY (order_id)
                                REFERENCES Orders(order_id)
                                ON DELETE CASCADE,

                            FOREIGN KEY (product_id)
                                REFERENCES Products(product_id)
                                ON DELETE CASCADE
);

-- =========================
-- INDEXES (Performance)
-- =========================
CREATE INDEX idx_products_category ON Products(category_id);
CREATE INDEX idx_orders_user ON Orders(user_id);

-- =========================
-- INSERT CATEGORIES
-- =========================
INSERT INTO Categories (category_name) VALUES
                                           ('Men'),
                                           ('Women'),
                                           ('Kids'),
                                           ('Unisex');

-- =========================
-- INSERT USERS (Plain for now - will encrypt later)
-- =========================
INSERT INTO Users (name, email, password, role) VALUES
                                                    ('Admin', 'admin@urbanwear.com', 'admin123', 'admin'),
                                                    ('Customer1', 'user@urbanwear.com', '1234', 'customer');

-- =========================
-- PRODUCTS (WITH STOCK)
-- =========================
INSERT INTO Products (name, price, category_id, discount, stock, image_url) VALUES
-- MEN
('Men T-Shirt', 1500, 1, 10, 20, 'images/men/men1.jpg'),
('Men Jeans', 2500, 1, 5, 15, 'images/men/men2.jpg'),
('Men Jacket', 4000, 1, 15, 10, 'images/men/men3.jpg'),
('Men Hoodie', 3000, 1, 0, 12, 'images/men/men4.jpg'),
('Men Shirt', 2000, 1, 8, 18, 'images/men/men5.jpg'),

-- WOMEN
('Women Dress', 3000, 2, 10, 20, 'images/women/women1.jpg'),
('Women Top', 1500, 2, 5, 25, 'images/women/women2.jpg'),
('Women Jacket', 3500, 2, 15, 10, 'images/women/women3.jpg'),
('Women Saree', 5000, 2, 20, 8, 'images/women/women4.jpg'),
('Women Kurti', 2200, 2, 8, 14, 'images/women/women5.jpg'),

-- KIDS
('Kids T-Shirt', 800, 3, 5, 30, 'images/kids/kids1.jpg'),
('Kids Jacket', 2000, 3, 12, 10, 'images/kids/kids2.jpg'),
('Kids Hoodie', 1800, 3, 8, 12, 'images/kids/kids3.jpg'),
('Kids Jeans', 1600, 3, 5, 15, 'images/kids/kids4.jpg'),
('Kids Tracksuit', 2200, 3, 10, 9, 'images/kids/kids5.jpg'),

-- UNISEX
('Unisex Hoodie', 3000, 4, 10, 20, 'images/unisex/unisex1.jpg'),
('Unisex T-Shirt', 1400, 4, 5, 25, 'images/unisex/unisex2.jpg'),
('Unisex Jacket', 3500, 4, 15, 10, 'images/unisex/unisex3.jpg'),
('Unisex Track Pants', 2000, 4, 8, 18, 'images/unisex/unisex4.jpg'),
('Unisex Cap', 800, 4, 0, 40, 'images/unisex/unisex5.jpg');