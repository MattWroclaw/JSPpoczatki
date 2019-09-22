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
<%@ include file="header.jsp"%>
<h2>Multiplication table</h2>

<%
        int wynik = 1;
        out.print("<table>");
        for (int i = 1; i < 11; i++) {
            out.print("<tr>");
            for (int j = 1; j < 11; j++) {

                wynik = i * j;
                out.print("<td>"+wynik+"</td>");
            }
            out.print("</tr>");
        }
        out.print("</table>");
%>
<br>
<table>
<%
    int sizeX=10;
    int sizeY=10;

    for (int i=1; i<=sizeY; i++){
        out.print("<tr>");
        for (int j=1; j<=sizeX; j++){
            int m = i*j;
            String color = i>j? "blue" : (i<j ? "red": "green");
            out.print("<td style= 'background-color:"+ color+"'>"+m+"</td>");
        }
        out.print("</tr>");
    }
%>
</table>

<%@ include file="footer.jsp"%>
</body>
</html>
