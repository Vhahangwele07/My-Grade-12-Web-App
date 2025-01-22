<%-- 
    Document   : outcome
    Created on : 02 Jul 2024, 9:30:25 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
        String name=session.getAttribute("name").toString();
        String computerName=pageContext.getServletContext().getInitParameter("Computer_Name");
        String ispalind=request.getAttribute("ispalind").toString();
        String reversed=request.getAttribute("reversed").toString();
        String word=request.getAttribute("word").toString();
        Integer totalNumNonPalindromes=(Integer)session.getAttribute("totalNumNonPalindromes");
        Integer totalNumPalindrome=(Integer)session.getAttribute("totalNumPalindrome");
        %>
    </body>
        <p>
            Hello <b><%=name%></b> my name is <b><%=computerName%></b> Blow is your Output :
        </p>
        <table border="1">
            <thead>
                <tr>
                    <th>Entered Number:</th>
                    <th><%=word%></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Reversed Word :</td>
                    <td><%=reversed%></td>
                </tr>
                <tr>
                    <td>OutCome</td>
                    <td><%=ispalind%></td>
                </tr>
                <tr>
                    <td>Number of Palindromes :</td>
                    <td><%=totalNumPalindrome%></td>
                </tr>
                <tr>
                    <td>Total Number Of Non-Palindromes:</td>
                    <td><%=totalNumNonPalindromes%></td>
                </tr>
                
            </tbody>
        </table>
                <p>
                    please click <a href="play_game.jsp">here</a> to play Again.
                </p>
                <p>
                    please click <a href="summary.jsp">here</a> to View Summary.
                </p>

</html>
