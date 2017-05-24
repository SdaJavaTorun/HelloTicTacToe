<%@ page import="pl.sdacademy.model.TicTacToe" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kółko i krzyżyk</title>
    <style>
        td {
            width: 50px;
            height: 50px;
            font-size: 30px;
            text-align: center;
            line-height: 50px;
            margin: 5px;
        }
        td.win {
            background-color: aqua;
        }
    </style>
</head>
<body>
<a href="nacisnijpole?nowagra=true">NOWA GRA</a>
<br/><br/>
<%
    TicTacToe ticTacToe = (TicTacToe) request.getAttribute("board");
%>
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black" class="win">
            <% if (ticTacToe.getField(0, 0) == 0 ) { %>
            <a href="nacisnijpole?x=0&y=0">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(0, 0) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(0, 0) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <ghi:field x="1" y="0" model="${ticTacToe}" />

            <% if (ticTacToe.getField(1, 0) == 0 ) { %>
            <a href="nacisnijpole?x=1&y=0">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(1, 0) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(1, 0) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="border-bottom: 1px solid black">
            <% if (ticTacToe.getField(2, 0) == 0 ) { %>
            <a href="nacisnijpole?x=2&y=0">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(2, 0) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(2, 0) == 2 ) { %>
            X
            <% } %>
        </td>
    </tr>
    <tr>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <% if (ticTacToe.getField(0, 1) == 0 ) { %>
            <a href="nacisnijpole?x=0&y=1">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(0, 1) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(0, 1) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <% if (ticTacToe.getField(1, 1) == 0 ) { %>
            <a href="nacisnijpole?x=1&y=1">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(1, 1) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(1, 1) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="border-bottom: 1px solid black">
            <% if (ticTacToe.getField(2, 1) == 0 ) { %>
            <a href="nacisnijpole?x=2&y=1">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(2, 1) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(2, 1) == 2 ) { %>
            X
            <% } %>
        </td>
    </tr>
    <tr>
        <td style="border-right: 1px solid black;">
            <% if (ticTacToe.getField(0, 2) == 0 ) { %>
            <a href="nacisnijpole?x=0&y=2">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(0, 2) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(0, 2) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="border-right: 1px solid black;">
            <% if (ticTacToe.getField(1, 2) == 0 ) { %>
            <a href="nacisnijpole?x=1&y=2">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(1, 2) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(1, 2) == 2 ) { %>
            X
            <% } %>
        </td>
        <td style="">
            <% if (ticTacToe.getField(2, 2) == 0 ) { %>
            <a href="nacisnijpole?x=2&y=2">&nbsp;</a>
            <% } %>
            <% if (ticTacToe.getField(2, 2) == 1 ) { %>
            O
            <% } %>
            <% if (ticTacToe.getField(2, 2) == 2 ) { %>
            X
            <% } %>
        </td>
    </tr>
</table>
<%
    if (ticTacToe.isOWinner()) {
%>
    Wygrały kółka
<%
    }
%>
<%
    if (ticTacToe.isXWinner()) {
%>
    Wygrały krzyżyki
<%
    }
%>
</body>
</html>
