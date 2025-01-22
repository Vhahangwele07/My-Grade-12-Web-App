<%-- 
    Document   : persist_outcome
    Created on : 02 Jul 2024, 9:59:59 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>menu</h1>
        <%
        String name=session.getAttribute("name").toString();
        String computerName=pageContext.getServletContext().getInitParameter("Computer_Name");
        %>
        <p>
            Hello <b><%=name%></b> my name is <b><%=computerName%></b>  you have successfully persisted to database.
        </p>
        <p>
                    please click <a href="EndSessionServlet.do">here</a> to stop session and play again.
                </p>
                <p>
                    please click <a href="LogOutServlet.do">here</a> to LogOut.
                </p>
    </body>
</html>
