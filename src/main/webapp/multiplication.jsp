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

<%!
    public int mnozenie() {
        int wynik = 1;
        for (int i = 1; i < 11; i++) {
            for (int j = 1; j < 11; j++) {
                wynik = i * j;
            }
        }
        return wynik;
    }
%>
<%= mnozenie()%>

<%@ include file="footer.jsp"%>
</body>
</html>
