<%-- 
    Document   : change_room_type.jsp
    Created on : 12 Sep, 2020, 11:28:38 PM
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
 <form action="changed_rcapacity.jsp" method="post">
     <center>
         Enter Room Id:<input type ="text" name="rid"><br>
         <br>
    Enter Room Capacity:<input type ="text" name="room_capacity">
    <br>
         <br>
    <button>Change</button>
    </center>
    </form>

</body>
</html>