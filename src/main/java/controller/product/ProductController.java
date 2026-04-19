package controller.product;

import dao.ProductDAO;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {

    private ProductDAO productDAO;

    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            String id = req.getParameter("id");

            // 🔹 If specific product
            if (id != null) {
                Product product = productDAO.getProductById(Integer.parseInt(id));
                req.setAttribute("product", product);

                req.getRequestDispatcher("/WEB-INF/views/user/product-details.jsp")
                        .forward(req, resp);
                return;
            }

            // 🔹 Otherwise → list all
            List<Product> products = productDAO.getAllProducts();
            req.setAttribute("products", products);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to load products");
        }

        req.getRequestDispatcher("/WEB-INF/views/user/products.jsp")
                .forward(req, resp);
    }
}