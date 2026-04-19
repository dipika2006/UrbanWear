<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>404 - Page Not Found</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .error-box {
            text-align: center;
            background: #fff;
            padding: 50px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }

        h1 {
            font-size: 90px;
            color: #ff4c4c;
            margin: 0;
        }

        p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background: #333;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        a:hover {
            background: #555;
        }
    </style>
</head>
<body>

<div class="error-box">
    <h1>404</h1>
    <p>Page not found</p>
    <p>The page you are looking for doesn’t exist.</p>
    <a href="${pageContext.request.contextPath}/views/user/home.jsp">Go to Home</a>
</div>

</body>
</html>