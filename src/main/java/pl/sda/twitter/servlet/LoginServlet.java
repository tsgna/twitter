package pl.sda.twitter.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String login = req.getParameter("login");
        final String password = req.getParameter("password");

        final PrintWriter writer = resp.getWriter();
        final String userName = "admin";
        if (login.equals(userName) && password.equals("password")) {
            final HttpSession session = req.getSession();
            session.setAttribute("user", userName);
            resp.sendRedirect(req.getContextPath() + "/");
        } else {
            writer.write("Niepoprawne dane logowania");
        }
    }
}
