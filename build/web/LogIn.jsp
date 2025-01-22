<%-- 
    Document   : LogIn
    Created on : 02 Jul 2024, 10:47:41 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn  Page</title>
    </head>
    <body>
        <h1>LogIn</h1>
        <form action="j_security_check" method="POST">
            <table >
                
                <tbody>
                    <tr>
                        <td>user Name:</td>                      
                        <td><input type="text" name="j_username" required=""/></td></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td><input type="password" name="j_password" required=""/></td>
                    </tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"</td>
                </tbody>
            </table>

        </form>
    </body>
</html>
