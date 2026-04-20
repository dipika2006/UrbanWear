<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
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
            max-width: 500px;
        }

        h1 {
            font-size: 60px;
            color: #ff9800;
            margin: 0;
        }

        p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        .details {
            margin-top: 15px;
            font-size: 14px;
            color: #888;
            word-break: break-word;
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
    <h1>Error</h1>
    <p>Something went wrong</p>

    <% if (exception != null) { %>
    <div class="details">
        <strong>Details:</strong><br>
        <%= exception.getMessage() %>
    </div>
    <% } %>

    <a href="${pageContext.request.contextPath}/views/user/home.jsp">Go to Home</a>
</div>

</body>
</html>