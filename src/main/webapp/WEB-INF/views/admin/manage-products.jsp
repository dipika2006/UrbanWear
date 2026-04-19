<%@ include file="../components/admin-header.jsp" %>

<h1 class="page-title">Manage Products</h1>

<a class="btn-add" href="add-product.jsp">+ Add Product</a>

<div class="table-card">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="p" items="${products}">
            <tr>
                <td>${p.productId}</td>
                <td>${p.name}</td>
                <td>Rs. ${p.price}</td>
                <td>
                    <a class="btn-edit" href="edit-product?id=${p.productId}">Edit</a>
                    <a class="btn-delete" href="delete-product?id=${p.productId}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../components/admin-footer.jsp" %>