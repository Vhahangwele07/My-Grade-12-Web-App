<%-- 
    Document   : Ge_stats_by_id_outcome
    Created on : 02 Jul 2024, 10:41:30 PM
    Author     : Student
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Palindromes"%>
<%@page import="za.ac.tut.model.entity.NonPalindromes"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.GetSumarry"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get By Id Outcome  Page</title>
    </head>
    <body>
        <h1>Get By Id Outcome </h1>
        <%
        GetSumarry summary=(GetSumarry) request.getAttribute("summary");
        String name=summary.getName();
        String userId=summary.getUserId();
        Integer totalNumNonPalindromes=summary.getTotalNumNonPalindromes();
        Integer totalNumPalindrome=summary.getTotalNumPalindrome();
        Integer totalNumWor=summary.getTotalNumWord();
        List<NonPalindromes> nonPlaindromes=summary.getNonPlaindromes();
        List<Palindromes> palindromes=summary.getPalindromes();
        Date creationDate=summary.getCreationDate();
        %>
        
    <table border="1">
    <tbody>
                <tr>
                    <td>Name :</td>
                    <td><%=name%></td>
                </tr>
                <tr>
                    <td>User Id :</td>
                    <td><%=userId%></td>
                </tr>
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
                <tr>
                    <td>Creation Date:</td>
                    <td><%=creationDate%></td>
                </tr>
            </tbody>
            
        </table>
       
        <p>
                    please click <a href="get_stats.jsp">here</a> to go back to menu page.
                </p>
                <p>
                    please click <a href="LogOutServlet.do">here</a> to LogOut.
                </p>
    </body>
</html>
