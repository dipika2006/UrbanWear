<%@ include file="../common/header.jsp" %>
<%@ include file="../common/navbar.jsp" %>

<div class="form-box">
    <h2>Login</h2>

    <form action="LoginController" method="post">
        <input type="text" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>

        <button class="button" type="submit">Login</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>