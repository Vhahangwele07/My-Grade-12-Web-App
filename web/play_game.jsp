<%-- 
    Document   : play_game
    Created on : 02 Jul 2024, 9:05:11 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Play Game Page</title>
    </head>
    <body>
        <h1>Play Game</h1>
        <p>
            Please enter a word below:
        </p>
        <form action="OutComeServlet.do" method="POST">
            <table>
                
                <tbody>
                    <tr>
                        <td>Number :</td>
                        <td><input type="text" name="word" required=""</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="SUBMIT"</td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
