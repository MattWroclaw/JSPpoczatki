<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page import="paczka.UptimeService" %><%--
  Created by IntelliJ IDEA.
  User: mateu
  Date: 21.09.2019
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Uptime</title>
</head>
<body>
<%@ include file="header.jsp"%>
<h2>Up time of this app</h2>

<%--tutaj jest ważne że w deklaracji ustanawiamy pole w tych wykrzyknikach i to jest stałe! --%>
<%--poniższa deklaracja jest wykonywana tylko raz, przy starcie servletu (wejściu na tą stronę)--%>
<%! private long startTime = System.currentTimeMillis(); %>
<%!
    private String getUpTimeMessage(){
        long upTime = System.currentTimeMillis()-startTime;
        long hours = upTime / 3600000;
        long minutes = upTime / 60000 %60;
        long seconds = upTime / 1000 %60;

        return String.format("Uptime: %dh %dm %ds", hours, minutes, seconds);
    }
%>
<%= getUpTimeMessage()%>
<%--wywołanie z klasy--%>
<%!
    private UptimeService uptimeService = new UptimeService();
%>
</br>
<h2>Poniżej czas uzyskany z oddzielnej klasy Java (UptimeService)</h2>
<%=

uptimeService.getUpTimeService()
%>

</br>


<%@ include file="footer.jsp"%>
</body>
</html>
