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
                       password VARCHAR(255) NOT NULL,
                       role VARCHAR(20) NOT NULL DEFAULT 'customer',
                       is_approved BOOLEAN DEFAULT TRUE,
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
                          stock INT DEFAULT 10,
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
-- INDEXES
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
-- USERS
-- =========================
INSERT INTO Users (name, email, password, role) VALUES
                                                    ('Admin', 'admin@urbanwear.com', 'admin123', 'admin'),
                                                    ('Customer1', 'user@urbanwear.com', '1234', 'customer');

-- =========================
-- PRODUCTS (40 ITEMS FIXED PATH)
-- IMPORTANT: image_url MUST match webapp/static/images/
-- =========================

INSERT INTO Products (name, price, category_id, discount, stock, image_url) VALUES

-- ================= MEN (10) =================
('Men T-Shirt', 1500, 1, 10, 20, 'static/images/men/men1.png'),
('Men Jeans', 2500, 1, 5, 15, 'static/images/men/men2.png'),
('Men Jacket', 4000, 1, 15, 10, 'static/images/men/men3.png'),
('Men Hoodie', 3000, 1, 0, 12, 'static/images/men/men4.png'),
('Men Shirt', 2000, 1, 8, 18, 'static/images/men/men5.png'),
('Men Polo', 1800, 1, 5, 20, 'static/images/men/men6.png'),
('Men Formal Shirt', 2200, 1, 10, 14, 'static/images/men/men7.png'),
('Men Casual Shirt', 2100, 1, 5, 16, 'static/images/men/men8.png'),
('Men Sweater', 2800, 1, 12, 11, 'static/images/men/men9.png'),
('Men Shorts', 1200, 1, 0, 25, 'static/images/men/men10.png'),

-- ================= WOMEN (10) =================
('Women Dress', 3000, 2, 10, 20, 'static/images/women/women1.png'),
('Women Top', 1500, 2, 5, 25, 'static/images/women/women2.png'),
('Women Jacket', 3500, 2, 15, 10, 'static/images/women/women3.png'),
('Women Saree', 5000, 2, 20, 8, 'static/images/women/women4.png'),
('Women Kurti', 2200, 2, 8, 14, 'static/images/women/women5.png'),
('Women Skirt', 1700, 2, 5, 18, 'static/images/women/women6.png'),
('Women Hoodie', 2600, 2, 10, 12, 'static/images/women/women7.png'),
('Women Jeans', 2400, 2, 8, 15, 'static/images/women/women8.png'),
('Women Blouse', 1600, 2, 5, 20, 'static/images/women/women9.png'),
('Women Coat', 4200, 2, 15, 9, 'static/images/women/women10.png'),

-- ================= KIDS (10) =================
('Kids T-Shirt', 800, 3, 5, 30, 'static/images/kids/kids1.png'),
('Kids Jacket', 2000, 3, 12, 10, 'static/images/kids/kids2.png'),
('Kids Hoodie', 1800, 3, 8, 12, 'static/images/kids/kids3.png'),
('Kids Jeans', 1600, 3, 5, 15, 'static/images/kids/kids4.png'),
('Kids Tracksuit', 2200, 3, 10, 9, 'static/images/kids/kids5.png'),
('Kids Shorts', 900, 3, 0, 25, 'static/images/kids/kids6.png'),
('Kids Sweater', 1400, 3, 5, 18, 'static/images/kids/kids7.png'),
('Kids Cap', 500, 3, 0, 40, 'static/images/kids/kids8.png'),
('Kids Shoes', 2500, 3, 10, 20, 'static/images/kids/kids9.png'),
('Kids Set', 3000, 3, 12, 10, 'static/images/kids/kids10.png'),

-- ================= UNISEX (10) =================
('Unisex Hoodie', 3000, 4, 10, 20, 'static/images/unisex/unisex1.png'),
('Unisex T-Shirt', 1400, 4, 5, 25, 'static/images/unisex/unisex2.png'),
('Unisex Jacket', 3500, 4, 15, 10, 'static/images/unisex/unisex3.png'),
('Unisex Track Pants', 2000, 4, 8, 18, 'static/images/unisex/unisex4.png'),
('Unisex Cap', 800, 4, 0, 40, 'static/images/unisex/unisex5.png'),
('Unisex Hoodie 2', 3200, 4, 10, 15, 'static/images/unisex/unisex6.png'),
('Unisex Shirt 2', 1500, 4, 5, 20, 'static/images/unisex/unisex7.png'),
('Unisex Jacket 2', 3600, 4, 15, 10, 'static/images/unisex/unisex8.png'),
('Unisex Pants 2', 2100, 4, 8, 18, 'static/images/unisex/unisex9.png'),
('Unisex Shoes', 2800, 4, 10, 12, 'static/images/unisex/unisex10.png');