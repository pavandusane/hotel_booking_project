<%-- 
    Document   : changed_rtype
    Created on : 12 Sep, 2020, 11:54:11 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        String room_id=request.getParameter("rid");
    String room_type=request.getParameter("room_type");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking","root","root");
Statement st=con.createStatement();


int i=st.executeUpdate("Update hotel_rooms set room_type='"+room_type+"' where room_id="+room_id+" ");
out.println("data updated");
}
catch(Exception e)
{
System.out.println("cannot connect");
}
%>
 
    </body>
</html>
