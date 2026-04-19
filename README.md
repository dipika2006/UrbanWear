# 📁 UrbanWear Project - Layered MVC Architecture

UrbanWear
│
├── sql
│   └── urbanwear.sql
│
├── src/main/java
│   ├── controller
│   │   ├── auth
│   │   │   ├── LoginController.java
│   │   │   ├── RegisterController.java
│   │   │
│   │   ├── user
│   │   │   ├── HomeController.java
│   │   │   ├── DashboardController.java
│   │   │
│   │   ├── product
│   │   │   ├── ProductController.java
│   │   │
│   │   ├── cart
│   │   │   ├── CartController.java
│   │   │
│   │   ├── order
│   │       ├── OrderController.java
│
│   ├── service
│   │   ├── AuthService.java
│   │   ├── ProductService.java
│   │   ├── OrderService.java
│   │
│   ├── dao
│   │   ├── UserDAO.java
│   │   ├── ProductDAO.java
│   │   ├── CategoryDAO.java
│   │   ├── OrderDAO.java
│   │   ├── OrderItemDAO.java
│   │
│   ├── entity
│   │   ├── User.java
│   │   ├── Product.java
│   │   ├── Order.java
│   │   ├── OrderItem.java
│   │   ├── Category.java
│   │
│   ├── filter
│   │   ├── AuthFilter.java
│   │   ├── AdminFilter.java
│   │
│   ├── utils
│   │   ├── db
│   │   │   ├── DBConnection.java
│   │   ├── security
│   │   │   ├── PasswordUtil.java
│   │   ├── validation
│   │       ├── ValidationUtil.java
│
├── src/main/webapp
│   ├── static
│   ├── WEB-INF
│   │   ├── views
│   │   │   ├── auth
│   │   │   ├── user
│   │   │   ├── admin
│   │   │   ├── components
│
├── pom.xml

## 👥 Team Members & Responsibilities

### 👤 Dipika Thapa – Frontend (UI/UX)
- Design JSP pages (Login, Register, Dashboard)
- Implement CSS for responsive design
- Create forms and layouts

### 👤 Punam Shrestha – Backend (Controller Layer)
- Develop Servlets (Controllers)
- Handle HTTP requests and responses
- Manage page navigation and redirects

### 👤 Asmi Ale Magar – Database & Model
- Design MySQL database
- Create ER Diagram
- Develop Java model classes (Product, User, Order)

### 👤 Eshu Thapa – Business Logic (Service Layer)
- Implement validation logic
- Handle order processing
- Manage stock updates

### 👤 Grishma Tamang – Authentication, Testing & Report
- Develop login system (session, cookies)
- Implement security (encryption)
- Write test cases
- Prepare documentation and report