<%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 21.09.2019
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
</head>
<body>

<h1>Hello, JPS2!</h1>
<a href="index.jsp">Main page</a> |
<a href="uptime.jsp">Uptime</a> |
<a href="number.jsp">Random number</a> |
<a href="multiplication.jsp">Multiplication table</a> |
<%=
request.getParameter("parameter")
%>


</body>
</html>
