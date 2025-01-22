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
import za.ac.tut.model.bl.GetSumarryFacadeLocal;
import za.ac.tut.model.entity.GetSumarry;

/**
 *
 * @author Student
 */
public class GetStatsByIdServlet extends HttpServlet {

  @EJB GetSumarryFacadeLocal gsfl;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        String userId=req.getParameter("id");
        GetSumarry summary=gsfl.getById(userId);
        String url="index.html";
        
        if(summary==null){
            url="invalid_user_id.jsp";
        }
        else 
        
        req.setAttribute("summary", summary);
        url="Ge_stats_by_id_outcome.jsp";
        
        RequestDispatcher rq=req.getRequestDispatcher(url);
        rq.forward(req, resp);  
    
    
    }
    
    
}
