<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.concurrent.TimeUnit" %><%--
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
<%! private long startTime = System.currentTimeMillis(); %>
<% long upTime = System.currentTimeMillis() - startTime;
out.print("UpTime in milis: "+upTime);

    String czas = String.format("%d min, %d sec",
            TimeUnit.MILLISECONDS.toMinutes(upTime),
            TimeUnit.MILLISECONDS.toSeconds(upTime) -
                    TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(upTime))
    );

out.print("</br>"+czas);

%>

</br>


<%@ include file="footer.jsp"%>
</body>
</html>
