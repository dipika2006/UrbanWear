<%@ include file="../components/admin-header.jsp" %>

<h1 class="page-title">Dashboard</h1>

<div class="card-container">

    <div class="card">
        <h3>Total Users</h3>
        <p class="card-value">${totalUsers}</p>
    </div>

    <div class="card">
        <h3>Total Products</h3>
        <p class="card-value">${totalProducts}</p>
    </div>

    <div class="card">
        <h3>Total Orders</h3>
        <p class="card-value">${totalOrders}</p>
    </div>

</div>

<%@ include file="../components/admin-footer.jsp" %>