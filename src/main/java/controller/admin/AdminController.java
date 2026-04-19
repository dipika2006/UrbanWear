package controller.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;

@WebServlet("/admin")
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        if (action == null || action.isEmpty()) {
            action = "dashboard";
        }

        switch (action) {

            case "dashboard":
                req.setAttribute("totalUsers", 10);
                req.setAttribute("totalProducts", 25);
                req.setAttribute("totalOrders", 5);
                req.getRequestDispatcher("/WEB-INF/views/admin/admin-dashboard.jsp")
                        .forward(req, resp);
                break;

            case "products":
                req.setAttribute("products", Collections.emptyList());
                req.getRequestDispatcher("/WEB-INF/views/admin/manage-products.jsp")
                        .forward(req, resp);
                break;

            case "users":
                req.setAttribute("users", Collections.emptyList());
                req.getRequestDispatcher("/WEB-INF/views/admin/manage-users.jsp")
                        .forward(req, resp);
                break;

            case "orders":
                req.setAttribute("orders", Collections.emptyList());
                req.getRequestDispatcher("/WEB-INF/views/admin/manage-orders.jsp")
                        .forward(req, resp);
                break;

            default:
                resp.sendRedirect(req.getContextPath() + "/admin?action=dashboard");
        }
    }
}