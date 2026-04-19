<body>

<!-- GLOBAL HEADER ONLY -->
<jsp:include page="/WEB-INF/views/components/header.jsp" />

<div class="dashboard-container">

    <!-- MAIN CONTENT ONLY -->
    <div class="main-content">

        <!-- PROFILE HEADER -->
        <div class="main-content">

            <!-- CENTER PROFILE SECTION -->
            <div class="profile-center-card">

                <img src="${pageContext.request.contextPath}/static/images/ProfilePicture.png"
                     alt="Profile Picture">

                <h2>${user.name}</h2>

                <a class="edit-btn"
                   href="${pageContext.request.contextPath}/profile">
                    Edit Profile
                </a>

            </div>

            <!-- OTHER DASHBOARD OPTIONS -->
            <div class="grid">

                <div class="stat-box">
                    <h3>Orders</h3>
                    <p>View your purchases</p>
                    <a class="btn" href="${pageContext.request.contextPath}/orders">Open</a>
                </div>

                <div class="stat-box">
                    <h3>Wishlist</h3>
                    <p>Saved items</p>
                    <a class="btn" href="${pageContext.request.contextPath}/wishlist">Open</a>
                </div>

                <div class="stat-box">
                    <h3>Cart</h3>
                    <p>Checkout items</p>
                    <a class="btn" href="${pageContext.request.contextPath}/cart">Open</a>
                </div>

                <div class="stat-box">
                    <h3>Settings</h3>
                    <p>Account preferences</p>
                    <a class="btn" href="${pageContext.request.contextPath}/profile">Edit</a>
                </div>

            </div>

        </div>
</div>

</body>

<%@ include file="../components/footer.jsp" %>