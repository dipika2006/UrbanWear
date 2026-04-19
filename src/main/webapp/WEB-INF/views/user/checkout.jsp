<section class="checkout">

    <h2 class="cart-title">Checkout</h2>

    <div class="checkout-box">

        <form action="${pageContext.request.contextPath}/order" method="post">

            <label>Name</label>
            <input type="text" name="name" required>

            <label>Address</label>
            <input type="text" name="address" required>

            <label>Phone</label>
            <input type="text" name="phone" required>

            <button type="submit">Place Order</button>

        </form>

    </div>

</section>