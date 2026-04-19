package controller.user;

import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // TEMP: skip login check for frontend work

        User user = new User();
        user.setName("Test User");
        user.setEmail("test@example.com");

        request.setAttribute("user", user);

        request.getRequestDispatcher("/WEB-INF/views/user/dashboard.jsp")
                .forward(request, response);
    }
}