<%@ attribute name="x" type="java.lang.Integer" %>
<%@ attribute name="y" type="java.lang.Integer" %>
<%@ attribute name="board" type="pl.sdacademy.model.TicTacToe" %>
<% if (board.getField(x, y)== 0) { %>
<a href="nacisnijpole?x=${x}&y=${y}">&nbsp;</a>
<% } %>
<% if (board.getField(x, y)== 1) { %>
O
<% } %>
<% if (board.getField(x, y)== 2) { %>
X
<% } %>