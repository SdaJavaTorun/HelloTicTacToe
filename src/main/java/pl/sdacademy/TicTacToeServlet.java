package pl.sdacademy;

import pl.sdacademy.model.TicTacToe;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class TicTacToeServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        HttpSession session = req.getSession(true);
        if (req.getParameter("nowagra") != null) {
            session.removeAttribute("board");
        }

        TicTacToe ticTacToe = (TicTacToe) session.getAttribute("board");

        if (ticTacToe == null) {
            ticTacToe = new TicTacToe(1);
            session.setAttribute("board", ticTacToe);
        }

        if (req.getParameter("x") != null && req.getParameter("y") != null) {
            int x = Integer.parseInt(req.getParameter("x"));
            int y = Integer.parseInt(req.getParameter("y"));

            ticTacToe.setField(x, y);
        }

        req.setAttribute("board", ticTacToe);
        req.getRequestDispatcher("/tictactoe.jsp").forward(req, resp);
//        PrintWriter out = resp.getWriter();
//        out.println("<a href=\"nacisnijpole?nowagra=true\">NOWA GRA</a><br />Obecny gracz: "
//                + ticTacToe.getCurrentPlayer()
//                + "<br/>"
//                + renderBoard(ticTacToe));
    }

//    private String renderBoard(TicTacToe ticTacToe) {
//        return renderField(0, 0, ticTacToe) + "|" + renderField(1, 0, ticTacToe) + "|" + renderField(2, 0, ticTacToe) + "<br />"
//                + "-----<br />"
//                + renderField(0, 1, ticTacToe) + "|" + renderField(1, 1, ticTacToe) + "|" + renderField(2, 1, ticTacToe) + "<br />"
//                + "-----<br />"
//                + renderField(0, 2, ticTacToe) + "|" + renderField(1, 2, ticTacToe) + "|" + renderField(2, 2, ticTacToe) + "<br />";
//    }
//
//    private String renderField(int x, int y, TicTacToe ticTacToe) {
//        if (ticTacToe.getField(x, y) == 0) {
//            return "<a href=\"nacisnijpole?x=" + x + "&y=" + y + "\">&nbsp;</a>";
//        }
//
//        return ticTacToe.getField(x, y) == 1 ? "o" : "x";
//    }
}
