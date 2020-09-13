<%-- 
    Document   : changed_rcapacity
    Created on : 12 Sep, 2020, 11:58:43 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
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
        String room_id=request.getParameter("rid");
    String room_capacity=request.getParameter("room_capacity");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking","root","root");
Statement st=con.createStatement();
out.println("connection established");
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDate now1 = LocalDate.now();
int i=st.executeUpdate("Update hotel_rooms set room_capacity='"+room_capacity+"', room_capacity_date='"+now1+"' where room_id="+room_id+" ");
out.println("data updated");
}
catch(Exception e)
{
System.out.println("cannot connect");
}
%>
 
    </body>
</html>
