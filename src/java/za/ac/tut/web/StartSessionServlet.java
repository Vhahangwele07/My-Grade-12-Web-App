/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
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
public class StartSessionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        HttpSession session=req.getSession(true);
        
        String name=req.getParameter("name");
        String id=req.getParameter("id");
        
        sestsession(name,id,session);
        
        RequestDispatcher rq=req.getRequestDispatcher("menu.jsp");
        rq.forward(req, resp);
        
    }

    private void sestsession(String name, String id, HttpSession session) {
     
    Integer totalNumWor=0;
    Integer totalNumPalindrome=0;
    Integer totalNumNonPalindromes=0;
    List<Palindromes> palindromes=new ArrayList();
    List<NonPalindromes> nonPlaindromes=new ArrayList();
   
    session.setAttribute("name", name);
    session.setAttribute("id", id);
    session.setAttribute("totalNumWor", totalNumWor);
    session.setAttribute("totalNumPalindrome", totalNumPalindrome);
    session.setAttribute("totalNumNonPalindromes", totalNumNonPalindromes);
    session.setAttribute("palindromes", palindromes);
    session.setAttribute("nonPlaindromes", nonPlaindromes);
    
    
    }

  
}
