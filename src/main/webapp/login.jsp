<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Hello World by JSP</title>
</head>
<body>
<form action="login" method="post">
    Login:&nbsp;<input type="text" name="username" />
    Hasło:&nbsp;<input type="password" name="password" />
    <input type="submit" value="Zaloguj" />
    <div style="color:red"><c:out value="${error}" /></div>
</form>
</body>
</html>
