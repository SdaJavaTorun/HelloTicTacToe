<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="board" type="pl.sdacademy.model.TicTacToe" %>
<%
    if (board.isOWinner()) {
%>
Wygrały kółka
<%
    }
%>
<%
    if (board.isXWinner()) {
%>
Wygrały krzyżyki
<%
    }
%>
