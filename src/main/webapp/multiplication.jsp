<%@ page import="paczka.Counter" %><%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 21.09.2019
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>multiplication table</title>
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="parameter"
               value="2"/>
</jsp:include>

<h1>Multiplication table</h1>

<%
    String xSizeParam = request.getParameter("xSize");
    String ySizeParam = request.getParameter("ySize");

    if (xSizeParam != null && ySizeParam != null) {
        Cookie x = new Cookie("xSize", xSizeParam);
        response.addCookie(x);

        Cookie y = new Cookie("ySize", ySizeParam);
        response.addCookie(y);

        response.sendRedirect("multiplication.jsp");
    }
%>

<%!
    private int findSizeCookie(String name, Cookie[] cookies) {
        for (Cookie c : cookies) {
            if (c.getName().equals(name)) {
                return Integer.parseInt(c.getValue());
            }
        }

        return 10;
    }
%>

<form action="multiplication.jsp" method="post">
    <label for="xSize">X</label>
    <input type="number" id="xSize" name="xSize" value="<%=findSizeCookie("xSize", request.getCookies())%>">
    <label for="ySize">Y</label>
    <input type="number" id="ySize" name="ySize" value="<%=findSizeCookie("ySize", request.getCookies())%>">
    <input type="submit" value="Wyślij">
</form>
<table>
    <%
        int sizeX = findSizeCookie("xSize", request.getCookies());
        int sizeY = findSizeCookie("ySize", request.getCookies());

        for (int i = 1; i <= sizeY; i++) {
            out.print("<tr>");
            for (int j = 1; j <= sizeX; j++) {
                int m = i * j;
                String color = i > j ? "blue" : (i < j ? "red" : "green");
                out.print("<td style='background-color: " + color + "'>" + m + "</td>");
            }
            out.print("</tr>");
        }
    %>
</table>

<%@ include file="footer.jsp"%>
</body>
</html>
