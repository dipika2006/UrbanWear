<%@ include file="../components/header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<section class="cart">

    <h2 class="cart-title">Your Cart</h2>

    <div class="cart-wrapper">

        <div class="cart-items">

            <c:if test="${empty sessionScope.cart}">
                <div class="empty-cart">
                    <p>Your cart is empty 🛒!</p>
                </div>
            </c:if>

            <c:forEach var="item" items="${sessionScope.cart}">

                <div class="cart-card">

                    <!-- NAME -->
                    <div class="cart-info">
                        <h3>${item.name}</h3>
                    </div>

                    <!-- QTY -->
                    <div class="cart-qty">
                        Qty: 1
                    </div>

                    <!-- PRICE -->
                    <div class="cart-price">
                        Rs. ${item.price}
                    </div>

                    <!-- ACTION -->
                    <div class="cart-action">
                        <a class="remove-btn"
                           href="${pageContext.request.contextPath}/cart?action=remove&productId=${item.productId}">
                            Remove
                        </a>
                    </div>

                </div>

            </c:forEach>

        </div>

        <!-- SUMMARY -->
        <div class="cart-summary">

            <h3>Order Summary</h3>

            <p>
                Total Items:
                <c:choose>
                    <c:when test="${empty sessionScope.cart}">
                        0
                    </c:when>
                    <c:otherwise>
                        ${sessionScope.cart.size()}
                    </c:otherwise>
                </c:choose>
            </p>

            <a class="checkout-btn"
               href="${pageContext.request.contextPath}/checkout">
                Proceed to Checkout
            </a>

        </div>

    </div>

</section>

<%@ include file="../components/footer.jsp" %>