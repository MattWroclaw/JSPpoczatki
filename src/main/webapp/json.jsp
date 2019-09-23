<%@ page import="paczka.Person" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="application/json; charset=UTF-8" language="java" %>
<%
    Person person = new Person();
    person.setLastName("Kowalski");
    person.setFirstName("Jan");
    person.setEmail("jan@kowalski.pl");
    person.setTelefon("123456");
    person.getCounter();

    Gson gson = new Gson();
    String json = gson.toJson(person);
    out.print(json);
%>
