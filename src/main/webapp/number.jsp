<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 21.09.2019
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Random number</title>
</head>
<body>
<%@ include file="header.jsp"%>
<h2>Random nr 0-99</h2>

<% Random r = new Random();
    int zmienna = r.nextInt(99);
    out.print("wylosowana liczba to: "+zmienna);
%>
</br>
Jeśli liczba jest mniejsza od 50 wyświetl na ekranie napis "Liczba mniejsza od 50", a samą liczbę pokoloruj na niebiesko
</br>
Jeśli liczba jest równa lub większa 50 wyświetl na ekranie napisz "Liczba równa lub większa od 50", a samą liczbę pokoloruj na zielono

</br>

<h2><%
if (zmienna<50){
    out.print("<font color ='blue'> Liczba mniejsza od 50</font>");

} else {
    out.print("<font color = 'green'> Liczba większa lub równa 50</font>");
}
%></h2>





<%@ include file="footer.jsp"%>
</body>
</html>
