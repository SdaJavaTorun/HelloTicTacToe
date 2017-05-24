<%@ page import="pl.sdacademy.model.TicTacToe" %>
<%@ taglib prefix="def" tagdir="/WEB-INF/tags" %>
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

<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black" class="win">
            <def:tictactoe board="${board}" x="0" y="0" />
        </td>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <def:tictactoe board="${board}" x="1" y="0" />
        </td>
        <td style="border-bottom: 1px solid black">
            <def:tictactoe board="${board}" x="2" y="0" />
        </td>
    </tr>
    <tr>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <def:tictactoe board="${board}" x="0" y="1" />
        </td>
        <td style="border-right: 1px solid black;border-bottom: 1px solid black">
            <def:tictactoe board="${board}" x="1" y="1" />
        </td>
        <td style="border-bottom: 1px solid black">
            <def:tictactoe board="${board}" x="2" y="1" />
        </td>
    </tr>
    <tr>
        <td style="border-right: 1px solid black;">
            <def:tictactoe board="${board}" x="0" y="2" />
        </td>
        <td style="border-right: 1px solid black;">
            <def:tictactoe board="${board}" x="1" y="2" />
        </td>
        <td style="">
            <def:tictactoe board="${board}" x="2" y="2" />
        </td>
    </tr>
</table>
<def:winner board="${board}" />
</body>
</html>
