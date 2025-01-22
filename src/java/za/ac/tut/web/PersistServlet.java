/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.GetSumarryFacadeLocal;
import za.ac.tut.model.entity.GetSumarry;
import za.ac.tut.model.entity.NonPalindromes;
import za.ac.tut.model.entity.Palindromes;

/**
 *
 * @author Student
 */
public class PersistServlet extends HttpServlet {
@EJB GetSumarryFacadeLocal gsfl;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        HttpSession session=req.getSession();
        
        String name=session.getAttribute("name").toString();
        String userId=session.getAttribute("id").toString();
        Integer totalNumNonPalindromes=(Integer)session.getAttribute("totalNumNonPalindromes");
        Integer totalNumPalindrome=(Integer)session.getAttribute("totalNumPalindrome");
        Integer totalNumWor=(Integer)session.getAttribute("totalNumWor");
        List<NonPalindromes> nonPlaindromes=(List<NonPalindromes>)session.getAttribute("nonPlaindromes");
        List<Palindromes> palindromes=(List<Palindromes>)session.getAttribute("palindromes");
        
        GetSumarry summary=editSummary(name,userId,totalNumNonPalindromes,totalNumPalindrome,totalNumWor,nonPlaindromes,palindromes);
    
        gsfl.create(summary);
        
         RequestDispatcher rq=req.getRequestDispatcher("persist_outcome.jsp");
        rq.forward(req, resp);
    }

    private GetSumarry editSummary(String name, String userId, Integer totalNumNonPalindromes, Integer totalNumPalindrome, Integer totalNumWor, List<NonPalindromes> nonPlaindromes, List<Palindromes> palindromes) {
     
    GetSumarry summary=new GetSumarry();
    summary.setUserId(userId);
    summary.setCreationDate(new Date());
    summary.setName(name);
    summary.setNonPlaindromes(nonPlaindromes);
    summary.setPalindromes(palindromes);
    summary.setTotalNumPalindrome(totalNumPalindrome);
    summary.setTotalNumWord(totalNumWor);
    
    return summary;
    }

    
}
