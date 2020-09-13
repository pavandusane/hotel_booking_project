<%-- 
    Document   : login
    Created on : 12 Sep, 2020, 6:15:38 PM
    Author     : Sai
--%>

<%@page import="java.sql.*,java.util.*"%>
<%     
String username=request.getParameter("username");
String password=request.getParameter("password");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking", "root", "root");
Statement st=conn.createStatement();
ResultSet rss=st.executeQuery("select uname,pass,Id from registration ");

int flag=0;
while(rss.next())
{
if(username.equals(rss.getString(1)) && password.equals(rss.getString(2)))
{
   

String cid=rss.getString(3);

out.println(cid);

 session.setAttribute("cid",cid); 

response.sendRedirect("search_rooms.jsp");
break;
}
else if(username.equals("admin") && password.equals("admin"))
{
    response.sendRedirect("admin.jsp");
    break;
}
else
{
continue;   

    
}
}
if(flag==1){
out.println("Invalid username and passward");
}
}
catch(Exception e)
{
System.out.println("Exception in the program");
}
%>

