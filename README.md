# 👕 UrbanWear – Clothing Store Management System

UrbanWear is a full-stack web-based Clothing Store Management System designed to manage products, users, orders, and shopping cart functionality. It provides a seamless shopping experience for users and a powerful admin panel for managing store operations.

---

## 🚀 Features

### 👤 User Features
- User Registration & Login
- Browse Products (Men, Women, Kids, Unisex)
- Add to Cart
- Checkout & Place Orders
- View Dashboard

### 🛒 Admin Features
- Admin Dashboard
- Manage Products (Add, Update, Delete)
- Manage Users
- View & Manage Orders

---

## 🏗️ Project Structure

```
UrbanWear
│
├── references
├── sql
│   └── urbanwear.sql
│
├── src
│   └── main
│       ├── java
│       │   ├── controller
│       │   │   ├── admin
│       │   │   ├── auth
│       │   │   ├── cart
│       │   │   ├── order
│       │   │   ├── product
│       │   │   └── user
│       │   │
│       │   ├── dao
│       │   ├── entity
│       │   ├── exception
│       │   ├── filter
│       │   ├── service
│       │   └── utils
│       │
│       └── webapp
│           ├── static (CSS, JS, Images)
│           ├── WEB-INF
│           │   ├── views (JSP Pages)
│           │   └── error pages
│           └── web.xml
│
├── pom.xml
└── README.md
```

---

## 🧑‍💻 Technologies Used

- Backend: Java (Servlets, JSP)
- Frontend: HTML, CSS, JavaScript
- Database: MySQL
- Build Tool: Maven
- Architecture: MVC (Model-View-Controller)

---

## ⚙️ Setup Instructions

### 1. Clone the Repository
```
https://github.com/dipika2006/UrbanWear.git
```

### 2. Configure Database
- Create a MySQL database (e.g., `urbanwear`)
- Import the SQL file:
```
sql/urbanwear.sql
```

### 3. Update Database Configuration
Edit:
```
src/main/java/utils/DBConnection.java
```

Update credentials:
```java
private static final String URL = "jdbc:mysql://localhost:3306/urbanwear";
private static final String USER = "root";
private static final String PASSWORD = "your_password";
```

### 4. Build the Project
```
mvn clean install
```

### 5. Deploy
- Deploy the generated `.war` file to Apache Tomcat
- Open:
```
http://localhost:8081/UrbanWear
```

---

## 🔐 Authentication & Security

- Password hashing using PasswordUtil
- AuthFilter for user access
- AdminFilter for admin access
- ValidationUtil for input validation

---

## 📦 Key Modules

- Auth Module
- Product Module
- Cart Module
- Order Module
- Admin Module

---

## 🖼️ UI Components

- CSS styles
- JavaScript functionality
- Categorized images (men, women, kids, unisex)

---

## ⚠️ Error Handling

- 404.jsp – Page Not Found
- 500.jsp – Server Error
- error.jsp – General Error

---

## 📌 Future Enhancements

- Online payment integration
- Product reviews & ratings
- Order tracking system
- REST API support
- Mobile UI improvements

---

## 👥 Contributors

- Academic Project

---

## 📄 License

For educational purposes only.
