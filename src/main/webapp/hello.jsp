<%@ page import="pl.sdacademy.model.TicTacToe" %>
<%@ page import="pl.sdacademy.model.Piesek" %>
<%@ page import="java.io.IOError" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="abc" uri="/WEB-INF/tags.tld" %>
<%@ taglib prefix="def" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World by JSP</title>
</head>
<body>

<form action="hello">
    <input name="age">
</form>

Dog is <c:out value="${piesek.age}" /> years old.
<br/>
<br/>
<br/>
<br/>
<a href="logout">LOGOUT</a>

</body>
</html>
