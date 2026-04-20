<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/auth.css">
</head>

<body>

<div class="auth-wrapper">

    <div class="auth-card">

        <h2>Login</h2>

        <form action="${pageContext.request.contextPath}/login" method="post">

            <div class="input-box">
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter email" required>
            </div>

            <div class="input-box">
                <label>Password</label>
                <input type="password" name="password" placeholder="Enter password" required>
            </div>

            <button type="submit" class="auth-btn">Login</button>

        </form>

        <p class="auth-text">
            Don't have an account?

            <a href="${pageContext.request.contextPath}/register">Register</a>
        </p>

    </div>

</div>

</body>
</html>