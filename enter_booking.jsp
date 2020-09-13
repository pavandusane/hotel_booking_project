<%-- 
    Document   : enter_booking
    Created on : 13 Sep, 2020, 1:48:49 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 

String roomtype=request.getParameter("roomtype");
String rid=request.getParameter("rid");
String nguest=request.getParameter("nguest");
String cindate=request.getParameter("cindate");
String coutdate=request.getParameter("coutdate");

try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking","root","root");
Statement st=con.createStatement();

String cid = (String) session.getAttribute("cid");

int i=st.executeUpdate("insert into booking values('"+rid+"',null,'"+cid+"','"+cindate+"','"+coutdate+"','"+nguest+"','"+roomtype+"','yes')");
out.println("Room Booked");
/*
int j=st.executeUpdate("Update hotel_rooms set available='no' where rid='"+rid+"'  ");
ResultSet rss=st.executeQuery("select coutdate from booking where rid='"+rid+"' ");
String coutd= rss.getString(1);

DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDate now1 = LocalDate.now();
*/
}
catch(Exception e)
{
System.out.println("cannot connect");
}
%>
    </body>
</html>
