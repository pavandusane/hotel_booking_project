<%-- 
    Document   : room_details
    Created on : 12 Sep, 2020, 10:47:05 PM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="filling_room_details.jsp" method="post">
        <table align="center" bgcolor="white"> 
<tr><td>
        Select Room Type:</td><td><select name="roomtype">
						<option value="">--Select Room Type--</option>
						<option value="standard">Standard</option>
						<option value="delux">Deluxe</option>
						<option value="normal">Normal</option>
					    </select></td>
<br><br>
</tr>
<tr><td>
<b> Enter Room Capacity:</td><td><input type="text" name="rcapacity">
<br><br>
</td>
</tr>
 
<tr><td></td><td>
        <input type="Submit" value="Submit"></td>
   <center>
       </table>
        </form>
    </body>
</html>
