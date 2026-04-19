package controller.auth;

import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
                        "SELECT * FROM users WHERE email=? AND password=?"
                );

                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {

                    // Create User object
                    User user = new User();
                    user.setUserId(rs.getInt("id")); // adjust if column name differs
                    user.setName(rs.getString("name"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(rs.getString("password"));
                    user.setRole(rs.getString("role"));
                    user.setApproved(rs.getBoolean("is_approved"));
                    user.setCreatedAt(rs.getTimestamp("created_at"));

                    // Create session
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);

                    // Redirect to dashboard
                    response.sendRedirect(request.getContextPath() + "/dashboard");

                } else {
                    request.setAttribute("error", "Invalid email or password");

                    request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp")
                            .forward(request, response);
                }

                rs.close();
                ps.close();
            }

        } catch (Exception e) {
            e.printStackTrace();

            request.setAttribute("error", "Server error occurred");
            request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp")
                    .forward(request, response);
        }
    }
}