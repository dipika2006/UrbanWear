<%@ include file="../components/admin-header.jsp" %>

<h1 class="page-title">Manage Orders</h1>

<div class="table-card">
    <table>
        <thead>
        <tr>
            <th>Order ID</th>
            <th>User</th>
            <th>Total</th>
            <th>Status</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="o" items="${orders}">
            <tr>
                <td>${o.orderId}</td>
                <td>${o.userName}</td>
                <td>Rs. ${o.total}</td>
                <td><span class="status">${o.status}</span></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../components/admin-footer.jsp" %>