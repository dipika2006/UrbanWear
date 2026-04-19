package controller.order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    // Show checkout page
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Object cart = session.getAttribute("cart");

        // If cart is empty → redirect
        if (cart == null) {
            resp.sendRedirect("home");
            return;
        }

        req.getRequestDispatcher("/WEB-INF/views/user/checkout.jsp")
                .forward(req, resp);
    }

    // Handle order submission
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();

        // Example: get form data
        String name = req.getParameter("name");
        String address = req.getParameter("address");

        // TODO: Save order to database

        // Clear cart after checkout
        session.removeAttribute("cart");

        // Redirect to success page
        resp.sendRedirect("order-success");
    }
}