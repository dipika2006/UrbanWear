<%@ include file="../common/header.jsp" %>
<%@ include file="../common/navbar.jsp" %>

<div class="form-box">
    <h2>Register</h2>

    <form action="RegisterController" method="post">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>

        <button class="button" type="submit">Register</button>
    </form>
</div>

<%@ include file="../common/footer.jsp" %>