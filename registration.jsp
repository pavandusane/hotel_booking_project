<%-- 
    Document   : registration
    Created on : 12 Sep, 2020, 6:18:52 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<html>
<head><title></title>
</head>
<body>
<% 

String fname=request.getParameter("name");

String emailid=request.getParameter("email");
String mno=request.getParameter("phone");
String uname=request.getParameter("uname");
String pass=request.getParameter("password");
out.println(fname);
out.println(mno);
out.println(emailid);
out.println(uname);
out.println(pass);
try{
    out.println("try");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking","root","root");
Statement st=con.createStatement();
out.println("connection established");
int i=st.executeUpdate("insert into registration values(null,'"+fname+"','"+emailid+"','"+mno+"','"+uname+"','"+pass+"')");
out.println("data inserted");
}
catch(Exception e)
{
System.out.println("cannot connect");
}
%>

</body>
</html>

