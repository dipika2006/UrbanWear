<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/component.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">

<!-- SWIPER CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

<!-- ICONS -->
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">

<!-- HEADER -->
<header class="header">
    <div class="left-section">
        <div class="menu-icon" onclick="toggleSidebar()">
            <i class='bx bx-menu'></i>
        </div>

        <a href="${pageContext.request.contextPath}/home" class="logo">
            <img src="${pageContext.request.contextPath}/static/images/UrbanWear.png">
        </a>
    </div>

    <div class="middle-section">
        <form action="${pageContext.request.contextPath}/products" method="get">
            <input type="text" name="search" placeholder="Search products...">
            <button type="submit">
                <i class='bx bx-search'></i>
            </button>
        </form>
    </div>

    <div class="right-section">
        <a href="#"><i class='bx bx-bell'></i></a>

        <c:choose>
            <c:when test="${empty sessionScope.user}">
                <a href="${pageContext.request.contextPath}/login">
                    <i class='bx bx-user'></i>
                </a>
            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/dashboard">
                    <i class='bx bxs-user-circle'></i>
                </a>
            </c:otherwise>
        </c:choose>
    </div>
</header>

<!-- SIDEBAR -->
<div class="sidebar" id="sidebar">
    <a href="${pageContext.request.contextPath}/home"><i class='bx bx-home'></i><span>Home</span></a>
    <a href="${pageContext.request.contextPath}/cart"><i class='bx bx-cart'></i><span>Cart</span></a>
    <a href="#contact"><i class='bx bx-phone'></i><span>Contact Us</span></a>
    <a href="${pageContext.request.contextPath}/dashboard"><i class='bx bx-user'></i><span>You</span></a>
</div>