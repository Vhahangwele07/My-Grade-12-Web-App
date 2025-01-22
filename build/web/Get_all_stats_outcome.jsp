<%-- 
    Document   : Get_all_stats_outcome
    Created on : 02 Jul 2024, 10:18:51 PM
    Author     : Student
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Palindromes"%>
<%@page import="za.ac.tut.model.entity.NonPalindromes"%>
<%@page import="za.ac.tut.model.entity.GetSumarry"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get all Stats Outcome Page</title>
    </head>
    <body>
        <h1>Get all Stats Outcome</h1>
        <%
        List<GetSumarry> summary=(List<GetSumarry>)request.getAttribute("summary");
        %>
        <p>
            your stats are as follows :
        </p>
        <table border="1">
            <%
            for (int i = 0; i < summary.size(); i++) {
                   
        String name=summary.get(i).getName();
        String userId=summary.get(i).getUserId();
        Integer totalNumNonPalindromes=summary.get(i).getTotalNumNonPalindromes();
        Integer totalNumPalindrome=summary.get(i).getTotalNumPalindrome();
        Integer totalNumWor=summary.get(i).getTotalNumWord();
        List<NonPalindromes> nonPlaindromes=summary.get(i).getNonPlaindromes();
        List<Palindromes> palindromes=summary.get(i).getPalindromes();
        Date creationDate=summary.get(i).getCreationDate();
                    
                
            %>
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
             <%
            }
        %>
        </table>
       
        <p>
                    please click <a href="get_stats.jsp">here</a> to go back to menu page.
                </p>
                <p>
                    please click <a href="LogOutServlet.do">here</a> to LogOut.
                </p>
    </body>
</html>
