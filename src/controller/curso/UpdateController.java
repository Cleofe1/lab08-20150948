package controller.curso;
import java.util.*;
import java.io.IOException;  
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.jws.WebService;
import javax.servlet.*;  
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

import model.entity.Curso;
  
@SuppressWarnings("serial")
public class UpdateController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
	         throws ServletException, IOException {  
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key k = KeyFactory.createKey(Curso.class.getSimpleName(), new Long(request.getParameter("cursoId")).longValue());
		Curso r = pm.getObjectById(Curso.class, k);
		
		request.setAttribute("curso", r);
		
		request.getRequestDispatcher("/WEB-INF/view/course/update.jsp").forward(request, response);
		pm.close();
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
        throws ServletException, IOException {  
			PersistenceManager pm = PMF.get().getPersistenceManager();
			Key k = KeyFactory.createKey(Curso.class.getSimpleName(), new Long(request.getParameter("cursoId")).longValue());
			Curso r = pm.getObjectById(Curso.class, k);
			
			  String name=request.getParameter("name");  
		        String nivel=request.getParameter("nivel");
		        String departamento=request.getParameter("departamento");
	        
		r.setName(name);
		r.setNivel(nivel);
		r.setDepartamento(departamento);
		
		response.sendRedirect("/course/view");
		pm.close();
		
	}	  
}