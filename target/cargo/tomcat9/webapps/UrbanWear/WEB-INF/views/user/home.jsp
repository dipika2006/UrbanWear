<%@ include file="../components/header.jsp" %>

<section class="home swiper">

    <div class="swiper-wrapper">

        <div class="swiper-slide">
            <div class="hero-grid">
                <div class="hero-text">
                    <h1>Streetwear Collection</h1>
                    <p>Express your bold personality with modern street fashion</p>
                    <a class="btn-buy" href="${pageContext.request.contextPath}/products">Add to Cart</a>
                </div>
                <img src="${pageContext.request.contextPath}/static/images/men/men1.png">
            </div>
        </div>

        <div class="swiper-slide">
            <div class="hero-grid">
                <div class="hero-text">
                    <h1>Elegant Women Fashion</h1>
                    <p>Style that blends comfort and elegance effortlessly</p>
                    <a class="btn-buy" href="${pageContext.request.contextPath}/products">Add to Cart</a>
                </div>
                <img src="${pageContext.request.contextPath}/static/images/women/women10.png">
            </div>
        </div>

        <div class="swiper-slide">
            <div class="hero-grid">
                <div class="hero-text">
                    <h1>Kids Fun Wear</h1>
                    <p>Bright, playful and comfortable outfits for kids</p>
                    <a class="btn-buy" href="${pageContext.request.contextPath}/products">Add to Cart</a>
                </div>
                <img src="${pageContext.request.contextPath}/static/images/kids/kids5.png">
            </div>
        </div>

    </div>

    <div class="swiper-pagination"></div>

</section>

<!-- PRODUCTS -->
<section class="products-container">

    <c:forEach var="p" items="${products}">
        <div class="product-card">

            <img src="${pageContext.request.contextPath}/${p.imageUrl}" />
            <h3>${p.name}</h3>

            <!-- PRODUCT ACTION BAR -->
            <div class="product-actions">

                <!-- LEFT: PRICE -->
                <div class="price">
                    Rs. ${p.price}
                </div>

                <!-- RIGHT: BUTTONS -->
                <div class="actions-right">

                    <a class="cart-btn"
                       href="${pageContext.request.contextPath}/cart?action=add&productId=${p.productId}">
                        <i class='bx bx-cart'></i>
                    </a>

                    <a class="buy-btn"
                       href="${pageContext.request.contextPath}/checkout?productId=${p.productId}">
                        Buy Now
                    </a>

                </div>

            </div>

        </div>
    </c:forEach>

</section>

<%@ include file="../components/footer.jsp" %>