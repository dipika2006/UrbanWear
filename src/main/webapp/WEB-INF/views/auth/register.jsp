<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/auth.css">
</head>

<body>

<div class="auth-wrapper">

    <div class="auth-card">

        <h2>Create Account</h2>

        <form action="${pageContext.request.contextPath}/register" method="post">

            <div class="input-box">
                <label>Full Name</label>

                <input type="text" name="name" placeholder="Enter full name" required>
            </div>

            <div class="input-box">
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter email" required>
            </div>

            <div class="input-box">
                <label>Password</label>
                <input type="password" name="password" placeholder="Enter password" required>
            </div>

            <div class="input-box">
                <label>Confirm Password</label>
                <input type="password" name="confirmPassword" placeholder="Confirm password" required>
            </div>

            <button type="submit" class="auth-btn">Register</button>

        </form>

        <p class="auth-text">
            Already have an account?

            <a href="${pageContext.request.contextPath}/login">Login</a>
        </p>

    </div>

</div>

</body>
</html>