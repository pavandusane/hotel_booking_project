<%-- 
    Document   : filling_room_details
    Created on : 12 Sep, 2020, 10:51:27 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 

String room_type=request.getParameter("rtype");
String room_capacity=request.getParameter("rcapacity");

try{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking","root","root");
Statement st=con.createStatement();


   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDate now1 = LocalDate.now();
  String available="yes";
int i=st.executeUpdate("insert into hotel_rooms values(null,'"+room_type+"','"+room_capacity+"','"+now1+"','"+available+"')");
out.println("Room data inserted");
%>
<br>
<a href="room_details.jsp">Back</a>
<%
}
catch(Exception e)
{
System.out.println("cannot connect");
}
%>

    </body>
</html>
