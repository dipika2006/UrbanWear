<%@ include file="../components/admin-header.jsp" %>

<h1 class="page-title">Manage Users</h1>

<div class="table-card">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="u" items="${users}">
            <tr>
                <td>${u.userId}</td>
                <td>${u.name}</td>
                <td>${u.email}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../components/admin-footer.jsp" %>