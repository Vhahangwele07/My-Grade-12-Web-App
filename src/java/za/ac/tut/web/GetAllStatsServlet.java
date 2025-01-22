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
import za.ac.tut.model.bl.GetSumarryFacadeLocal;
import za.ac.tut.model.entity.GetSumarry;

/**
 *
 * @author Student
 */
public class GetAllStatsServlet extends HttpServlet {
@EJB GetSumarryFacadeLocal gsfl;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        List<GetSumarry> summary=gsfl.findAll();
        
        req.setAttribute("summary", summary);
        RequestDispatcher rq=req.getRequestDispatcher("Get_all_stats_outcome.jsp");
        rq.forward(req, resp);  
    
    
    }


}
