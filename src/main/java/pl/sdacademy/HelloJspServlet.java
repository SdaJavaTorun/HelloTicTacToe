package pl.sdacademy;

import pl.sdacademy.model.Piesek;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloJspServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException {
        String who = req.getParameter("who");
        if (who == null) {
            who = "stranger";
        }

        req.setAttribute("who", who);
        req.getRequestDispatcher("/hello.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("piesek", new Piesek(Integer.parseInt(req.getParameter("age"))));
    }
}
