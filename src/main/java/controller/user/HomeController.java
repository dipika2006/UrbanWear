package controller.user;

import dao.ProductDAO;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeController extends HttpServlet {

    private ProductDAO productDAO;

    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            List<Product> products = productDAO.getRandomProducts(12);
            req.setAttribute("products", products);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to load products");
        }

        req.getRequestDispatcher("/WEB-INF/views/user/home.jsp")
                .forward(req, resp);
    }
}