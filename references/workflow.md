# 🛍️ Clothing Store Management System (Team Start Flow)

## Recommended Development Flow (Who Starts, Step-by-Step)

1️⃣ **Asmi Ale Magar (Database & Model)**
- Create database `clothing_store`
- Create tables: `users`, `products`, `categories`, `orders`, `order_items`
- Design ER Diagram
- Develop Model classes: User.java, Product.java, Category.java, Order.java, OrderItem.java

2️⃣ **Eshu Thapa (Service Layer / Business Logic)**
- Implement DBConnection.java
- Write ValidationUtil.java
- Develop Service Layer: UserService, ProductService, OrderService, AuthService
- Implement core business logic: stock updates, order processing

3️⃣ **Grishma Tamang (Authentication & Security)**
- Implement PasswordUtil.java for encryption
- Handle session management and page security
- Write basic test cases for login and registration

4️⃣ **Punam Shrestha (Controller Layer / Servlets)**
- Develop LoginController, RegisterController
- Map JSP pages to Servlets
- Handle request-response flow

5️⃣ **Dipika Thapa (Frontend / JSP + CSS)**
- Design login.jsp, register.jsp, dashboard.jsp
- Create products.jsp, cart.jsp, checkout.jsp
- Apply CSS styling and JS for interactivity

6️⃣ **Team Integration**
- Connect JSP forms → Servlets → Service Layer → DAO → Database
- Test end-to-end flow
- Fix bugs and handle errors

7️⃣ **Grishma Tamang (Documentation & Final Report)**
- Prepare screenshots, architecture diagram
- Write final report

---

**💡 Tip:**
- Start with **Asmi** for database & models
- Then **Eshu** for service logic
- Then **Grishma** for authentication
- Then **Punam** for controller mapping
- Then **Dipika** for frontend pages
- Finally, integrate as a team

