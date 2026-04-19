package controller.auth;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/auth/register.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/urbanwear",
                    "root",
                    ""
            )) {

                PreparedStatement ps = conn.prepareStatement(
                        "INSERT INTO users(name, email, password) VALUES (?, ?, ?)"
                );

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);

                int result = ps.executeUpdate();

                ps.close();

                if (result > 0) {
                    // success → go to login page
                    response.sendRedirect(request.getContextPath() + "/login");
                } else {
                    request.setAttribute("error", "Registration failed");

                    request.getRequestDispatcher("/WEB-INF/views/auth/register.jsp")
                            .forward(request, response);
                }
            }

        } catch (SQLIntegrityConstraintViolationException e) {
            request.setAttribute("error", "Email already exists");

            request.getRequestDispatcher("/WEB-INF/views/auth/register.jsp")
                    .forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();

            request.setAttribute("error", "Server error occurred");

            request.getRequestDispatcher("/WEB-INF/views/auth/register.jsp")
                    .forward(request, response);
        }
    }
}