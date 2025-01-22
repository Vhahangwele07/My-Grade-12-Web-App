/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.PalindromeOutcomeLocal;
import za.ac.tut.model.entity.NonPalindromes;
import za.ac.tut.model.entity.Palindromes;

/**
 *
 * @author Student
 */
public class OutComeServlet extends HttpServlet {
@EJB  PalindromeOutcomeLocal pol;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
     HttpSession session=req.getSession();
     
     String word=req.getParameter("word");
     
     String reversed=pol.reversedWord(word);
     Boolean outcome=pol.isPalindrome(word);
     String ispalind="";
       
      if(outcome){
          Palindromes palindrome=updatePalindromes(word);
          Integer totalNumPalindrome=(Integer)session.getAttribute("totalNumPalindrome");
          totalNumPalindrome++;
          session.setAttribute("totalNumPalindrome", totalNumPalindrome);
          
          List<Palindromes> palindromes=(List<Palindromes>)session.getAttribute("palindromes");
          palindromes.add(palindrome);
          ispalind="is a Palindrome";
          
      }
      else if(outcome!=true){
          
          NonPalindromes nonpalindrome = updateNonPalindromes(word);
          Integer totalNumNonPalindromes=(Integer)session.getAttribute("totalNumNonPalindromes");
          totalNumNonPalindromes++;
          session.setAttribute("totalNumNonPalindromes", totalNumNonPalindromes);
          
          List<NonPalindromes> nonPlaindromes=(List<NonPalindromes>)session.getAttribute("nonPlaindromes");
          nonPlaindromes.add(nonpalindrome);
          ispalind="is not a palindrome";
      }
      
     Integer totalNumWor=(Integer)session.getAttribute("totalNumWor");
     totalNumWor++;
     session.setAttribute("totalNumWor", totalNumWor);
     req.setAttribute("reversed", reversed);
     req.setAttribute("word", word);
     req.setAttribute("ispalind", ispalind);
     
     RequestDispatcher rq=req.getRequestDispatcher("outcome.jsp");
        rq.forward(req, resp);
        
    }

    private Palindromes updatePalindromes(String word) {
     
        Palindromes palindrome= new Palindromes();
        
        palindrome.setPalindromes(word);
        return palindrome;
        
    
    }

    private NonPalindromes updateNonPalindromes(String word) {
        
      NonPalindromes nonpalindrome =new NonPalindromes();
      nonpalindrome.setNonPalindromes(word);
      
      return nonpalindrome;
    
    }

    
}
