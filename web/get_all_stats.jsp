<%-- 
    Document   : get_all_stats
    Created on : 02 Jul 2024, 10:13:54 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get All Stats Page</title>
    </head>
    <body>
        <h1>Get All Stats </h1>
        <p>
            Please click button below to get all stats;
        </p>
        <form action="GetAllStatsServlet.do" method="POST">
        
        <table >
            
            <tbody>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"</td>
                </tr>
            </tbody>
        </table>
            
     </form>
    </body>
</html>
