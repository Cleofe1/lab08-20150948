	package controller.curso;

import java.io.IOException;  

import javax.jdo.PersistenceManager;
import javax.servlet.*;  
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;  

import model.entity.Curso;
  
@SuppressWarnings("serial")

public class FindController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
	         throws ServletException, IOException {  

			PersistenceManager pm = PMF.get().getPersistenceManager();
			Key k = KeyFactory.createKey(Curso.class.getSimpleName(), Long.parseLong(request.getParameter("cursoId")));
			Curso r = pm.getObjectById(Curso.class, k);
			request.setAttribute("curso", r);
			request.getRequestDispatcher("/WEB-INF/Views/Cursos/read.jsp").forward(request,response);
			pm.close();
			
			
		
		}
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response)   
	         throws ServletException, IOException {  
			doGet(request,response);
		     
		}
}