<%-- 
    Document   : search_rooms
    Created on : 13 Sep, 2020, 11:29:45 AM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%     
try{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking", "root", "root");
Statement st=conn.createStatement();

ResultSet res=st.executeQuery("select room_id,room_type,room_capacity  from hotel_rooms where available='yes' ");

ResultSetMetaData rss=res.getMetaData();
                int cols=rss.getColumnCount();
                int i;
            %>
            
            <table border="1" align="center">
            <h1 align="center">Available Rooms </h1>
                <%String id="0";%>
            <tr>
                <% for(i=1;i<=cols;i++)
                {
                    
                %><th><%=rss.getColumnName(i)%> </th>
                    <%}%>
                    </tr>
                    <%while(res.next())
                    {%> <tr><%for(i=1;i<=cols;i++)
                            {%> <td><%=res.getString(i)%></td> <%}%>
                            
                                        <% }%> </tr>
            </table>    
            <%
}
catch(Exception e)
{
System.out.println("Exception in the program");
}
%>
<a href="book_room.jsp"><input type="button" value="Book a room"></a>
    </body>
</html>
