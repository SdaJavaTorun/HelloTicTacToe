<%@ taglib prefix = "abc" uri = "/WEB-INF/tags.tld"%>
<%@ taglib prefix="def" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello World by JSP</title>
  </head>
  <body>
    <%--Hello <%=request.getAttribute("who") %>!--%>
    <def:kotek imie="Filemon" nazwisko="Kot"/>
    <def:kotek imie="Bonifacy" nazwisko="Kot"/>
    <% String who = (String) request.getAttribute("who"); %>

  <div>
    fsdfdsf
  </div>

<abc:Bold><table></table>ABCDFREREW</abc:Bold>
    <abc:Bold><abc:Hello who="${who}" /></abc:Bold>
    <def:bold><def:hello who="${who}" /></def:bold>
  </body>
</html>
