<%@ page contentType="text/html;charset=UTF-8" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin-style.css">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">

<!-- SIDEBAR -->
<div class="sidebar" id="sidebar">

  <h2>Admin</h2>

  <a href="${pageContext.request.contextPath}/admin?action=dashboard">
    <i class='bx bx-grid-alt'></i><span>Dashboard</span>
  </a>

  <a href="${pageContext.request.contextPath}/admin?action=products">
    <i class='bx bx-box'></i><span>Products</span>
  </a>

  <a href="${pageContext.request.contextPath}/admin?action=users">
    <i class='bx bx-user'></i><span>Users</span>
  </a>

  <a href="${pageContext.request.contextPath}/admin?action=orders">
    <i class='bx bx-cart'></i><span>Orders</span>
  </a>

  <a href="${pageContext.request.contextPath}/home">
    <i class='bx bx-arrow-back'></i><span>Back</span>
  </a>

</div>

<!-- MAIN START -->
<div class="admin-main">