<%@ page import="java.util.Date" %>
<%@ page import="java.util.Arrays" %>
<%--

  Jak tworzymy projekt, to robumy zwykły projekt maven'owski.
  Dodajemy do pom.xml -> javax.servlet.jsp + javax.servlet scope ma być provided
  W pom.xml dodajemy dodatkowo -> <properties> compiler oraz <build><pluginsManager><plugins>
  W pom.xml zmieniamy jeszcze <packaging>war<packgng

  W pom.xml przy dodawaniu tych dependecji to uważać na wersję, trzeba zobaczyć z jaką wersją
  poradzi sobie tomcat którego mamy na kompie.

  Później Project Structure -> artifacts ma być <project_name war>
oraz <project_name exploded>
  Później Project Structure -> facets: zmieniamy ścieżkę (dodajemy main/src do WEB-INF oraz [descriptor]
  main/src do resources [resources]


  User: mateu
  Date: 21.09.2019
  Time: 12:09

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp" %>
    <title>Hello, JSP!</title>
</head>
<body>
<h1>Hello, jsp!! :) </h1>

<%--WYRAŻENIE:tutaj musi być pojedyncze wywłoanie które coś zwraca
może to być też obiekt--%>
    <%=new Date() %>

    <%  Date date = new  Date();
out.print("<h2>"+date+"</h2>");
%>

<%--skryptlet nic nie musi zwracać, wystarczy że się wykona--%>
<%--    tutaj, skoro jest java to na końcu musi być ;--%>
    <%
    Date logData = new Date();
    System.out.println("Tą informację znajdziesz w logach: "+logData);
%>


<% out.print("<h3>czesiu</h3>");
%>
<%--deklaracja. Tutaj się deklaruje pola i metody --%>

<%!
    private String hello(){
        return "Hello!";
    }
%>
<%--w expression tag <%= %> nie trzeba pisać out.print
drukuje się wyrażenie wewnątrz tagów
najczęściej używa się go do drukowania wartości zmiennych lub metod--%>
<%=
 hello()
%>

<% Cookie[] ht = request.getCookies();
out.print("długość ciasteczka: "+ Arrays.stream(ht));%>

<%@ include file="footer.jsp"%>

</body>
</html>
