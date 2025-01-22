<%-- 
    Document   : get_stats_by_id
    Created on : 02 Jul 2024, 10:28:14 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get stats By Id  Page</title>
    </head>
    <body>
        <h1>Get stats By Id</h1>
        <p>
            Please click button below to get all stats;
        </p>
        <form action="GetStatsByIdServlet.do" method="POST">
        
        <table >
            
            <tbody>
                <tr>
                    <td>User Id:</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"/></td>
                </tr>
            </tbody>
        </table>
            
     </form>
    </body>
</html>
