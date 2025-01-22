<%-- 
    Document   : summary
    Created on : 02 Jul 2024, 9:39:14 PM
    Author     : Student
--%>

<%@page import="za.ac.tut.model.entity.Palindromes"%>
<%@page import="za.ac.tut.model.entity.NonPalindromes"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary  Page</title>
    </head>
    <body>
        <h1>Summary</h1>
        <%
        String name=session.getAttribute("name").toString();
        String computerName=pageContext.getServletContext().getInitParameter("Computer_Name");
        Integer totalNumNonPalindromes=(Integer)session.getAttribute("totalNumNonPalindromes");
        Integer totalNumPalindrome=(Integer)session.getAttribute("totalNumPalindrome");
        Integer totalNumWor=(Integer)session.getAttribute("totalNumWor");
        List<NonPalindromes> nonPlaindromes=(List<NonPalindromes>)session.getAttribute("nonPlaindromes");
        List<Palindromes> palindromes=(List<Palindromes>)session.getAttribute("palindromes");
        %>
        <p>
            Hello <b><%=name%></b> my name is <b><%=computerName%></b> Your summary is as follows :
        </p>
        <table border="1">
            
            <tbody>
                <tr>
                    <td>Total Number Of Words entered:</td>
                    <td><%=totalNumWor%></td>
                </tr>
                <tr>
                    <td>List Palindromes</td>
                    <td><%=palindromes%></td>
                </tr>
                <tr>
                    <td>List Non Palindromes</td>
                    <td><%=nonPlaindromes%></td>
                </tr>
                <tr>
                    <td>Number of Palindromes :</td>
                    <td><%=totalNumNonPalindromes%></td>
                </tr>
                <tr>
                    <td>Total Number Of Non-Palindromes:</td>
                    <td><%=totalNumPalindrome%></td>
                </tr>
            </tbody>
        </table>
<p>
                    please click <a href="play_game.jsp">here</a> to play Again.
                </p>
                <p>
                    please click <a href="PersistServlet.do">here</a> to Persist To Database.
                </p>
    </body>
</html>
