# 🛍️ Clothing Store Management System (Guide)

## 📌 Project Overview
This is a **Web-based Clothing Store Management System** built using:
- Java (Servlets)
- JSP
- MySQL
- MVC Architecture

---

# 🚀 1. How to Start (Step-by-Step)

## Step 1: Setup Environment
- Install JDK (Java 17 or above)
- Install Apache Tomcat
- Install MySQL
- Install IDE (NetBeans or Eclipse)

## Step 2: Create Project
- Create a **Dynamic Web Project**
- Configure Tomcat server
- Connect MySQL database

---

# 🧱 2. Database Setup (Start FIRST)

## Create Database:
```sql
CREATE DATABASE clothing_store;
```

## Tables:

### Users Table
```sql
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255),
    role VARCHAR(20)
);
```

### Products Table
```sql
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DOUBLE,
    stock INT
);
```

### Orders Table
```sql
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    total DOUBLE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
```

---

# 🏗️ 3. Project Structure (MVC)

```
src/
 ├── controller   (Servlets)
 ├── model        (Java Classes)
 ├── dao          (Database logic)
 ├── service      (Business logic)

web/
 ├── jsp/
 ├── css/
```

---

# 👥 4. Team Responsibilities

## 👤 Dipika Thapa – Frontend (UI/UX)
- Create JSP pages:
  - Login.jsp
  - Register.jsp
  - Dashboard.jsp
- Design forms (login/register)
- Apply CSS styling

## 👤 Punam Shrestha – Controller Layer
- Create Servlets:
  - LoginServlet
  - RegisterServlet
  - ProductServlet
- Handle HTTP requests/responses
- Manage page redirects

## 👤 Asmi Ale Magar – Database & Model
- Create database tables
- Design ER Diagram
- Create Java classes:
  - User.java
  - Product.java
  - Order.java

## 👤 Eshu Thapa – Service Layer
- Validate input:
  - Email
  - Password
- Handle business logic:
  - Order processing
  - Stock updates

## 👤 Grishma Tamang – Authentication & Testing
- Implement login system
- Handle sessions
- Encrypt passwords
- Write test cases
- Prepare final report

---

# 🔑 5. First Feature (START HERE)

## Build Login & Registration System

### Flow:
1. User registers → data stored in database
2. User logs in → credentials checked
3. If correct → redirect to dashboard

---

# 🔄 6. Development Flow

```
JSP (Form) → Servlet → DAO → Database
```

---

# 🛒 7. Next Features
- Add Product
- View Products
- Add to Cart
- Place Order

---

# 🧪 8. Testing
- Check login errors
- Empty field validation
- Invalid password
- Session timeout

---

# 📄 9. Documentation
- ER Diagram
- Screenshots
- System architecture
- Flow diagrams

---

# 📅 10. Suggested Timeline

## Week 1
- Setup project
- Database design
- UI (Login/Register)

## Week 2
- Login system working
- Backend integration

## Week 3
- Product & order features

## Week 4
- Testing & report

---

# 💡 Tips
- Start with login system first
- Work in parallel (each member)
- Test frequently
- Keep code simple

---

# ✅ Today’s Task
- Setup project
- Create database
- Design Login page

---

**You are ready to start 🚀**

