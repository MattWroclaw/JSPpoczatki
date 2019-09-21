<%@ page import="paczka.Counter" %><%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 21.09.2019
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>footer</title>
</head>
<br>

<font color="teal">Autor: M.B.</font>
</br>
<%
    Counter c = new Counter();
    int licznik = c.increaseCounter();
    out.print(licznik);
%>

</body>
</html>
