<%-- 
    Document   : book_room
    Created on : 13 Sep, 2020, 11:51:22 AM
    Author     : Sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html> 
<html> 

<head> 
	<style> 
		table, th, td { 
			border: 1px solid black; 
			border-collapse: collapse; 
		} 
		
	</style> 
</head> 

   <body >   
        <form method="post" action="enter_booking.jsp">
            <center>
                <table border="1" width="30%" cellpadding="5" >
                    <thead>
                        <tr>
                            <th colspan="2"><span class="header">Registration Form</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <td class="label">No of Guest</td>
                            <td><input class="textBox" type="text" name="nguest" required/></td>
                        </tr>
                        <tr>
                            <td class="label">RoomId</td>
                            <td><input class="textBox" type="text" name="rid" required/></td>
                        </tr>
                        <tr>
                            <td class="label">Check in Date</td>
                            <td><input class="textBox" type="date" name="cindate" value="" required/></td>
                        </tr>
                        <tr>
                            <td class="label">Check out Date</td>
                            <td><input class="textBox" type="date" name="coutdate" value="" required/></td>
                        </tr>
                        <tr>
                            <td><input class="button" type="submit" value="Submit" /></td>
                            <td><input class="button" type="reset" value="Reset" /></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html> 

