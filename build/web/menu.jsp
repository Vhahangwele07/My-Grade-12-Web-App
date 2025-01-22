<%-- 
    Document   : menu
    Created on : 02 Jul 2024, 8:59:36 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu Page</title>
    </head>
    <body>
        <h1>menu</h1>
        <%
        String name=session.getAttribute("name").toString();
        String computerName=pageContext.getServletContext().getInitParameter("Computer_Name");
        %>
        <p>
            Hello <b><%=name%></b> my name is <b><%=computerName%></b> Please choose one of the following :
        </p>
        <ul>
            <li>Click <a href="play_game.jsp">here</a> To Play.</li>
            <li>Click <a href="get_stats.jsp">here</a> To get stats.</li>
        </ul>

    </body>
</html>
