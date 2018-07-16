package controller.curso;

import java.io.IOException;  

import javax.jdo.JDOObjectNotFoundException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import model.entity.Curso;


@SuppressWarnings("serial")
public class DeleteController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key k = KeyFactory.createKey(Curso.class.getSimpleName(), new Long(request.getParameter("cursoId")).longValue());
		try{
			Curso r = pm.getObjectById(Curso.class, k);
			if (r !=null){
				Long id = r.getId();
				pm.deletePersistent(r);
				
				response.sendRedirect("/cursos/view");
				pm.close();
			}
		}catch (JDOObjectNotFoundException e) {
			response.sendRedirect("/cursos/view");
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
	doGet(request,response);	
	}
}