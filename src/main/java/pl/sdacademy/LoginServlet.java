package pl.sdacademy;

import pl.sdacademy.model.Piesek;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if ("admin".equals(req.getParameter("username")) && "admin".equals(req.getParameter("password"))) {
            req.getSession(true).setAttribute("username", "admin");
            resp.sendRedirect("hello");
        } else {
            req.setAttribute("error", "Niepoprawny użytkownik, bądź hasło");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
