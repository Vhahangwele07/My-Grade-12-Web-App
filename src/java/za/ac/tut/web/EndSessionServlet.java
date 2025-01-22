/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.entity.NonPalindromes;
import za.ac.tut.model.entity.Palindromes;

/**
 *
 * @author Student
 */
public class EndSessionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      HttpSession session=req.getSession();
    Integer totalNumNonPalindromes=(Integer)session.getAttribute("totalNumNonPalindromes");
        Integer totalNumPalindrome=(Integer)session.getAttribute("totalNumPalindrome");
        Integer totalNumWor=(Integer)session.getAttribute("totalNumWor");
        List<NonPalindromes> nonPlaindromes=(List<NonPalindromes>)session.getAttribute("nonPlaindromes");
        List<Palindromes> palindromes=(List<Palindromes>)session.getAttribute("palindromes");
    
        totalNumNonPalindromes=0;
        totalNumPalindrome=0;
        totalNumWor=0;
        nonPlaindromes.clear();
        palindromes.clear();
        
        RequestDispatcher rq=req.getRequestDispatcher("play_game.jsp");
        rq.forward(req, resp);
    }

   
}
