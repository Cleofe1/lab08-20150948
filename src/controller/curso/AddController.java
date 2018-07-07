package controller.curso;
import java.io.IOException;
import java.util.List;

import model.entity.*;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@SuppressWarnings("serial")
 
public class AddController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {
		doPost(request,response);
	}
	    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
          
		boolean existe = false;
		String res = request.getParameter("name");
		if(res!=null){ 
		
        String name=request.getParameter("name");  
        String departamento=request.getParameter("departamento");
        String nivel=request.getParameter("nivel");
        
        PersistenceManager pm = PMF.get().getPersistenceManager();
        String query = "select  from " + Curso.class.getName();
		List<Curso> listas = (List<Curso>) pm.newQuery(query).execute();
    
		for(Curso c : listas){
			if(c.getName().equals(name))
				existe=true;
		}
		
		
		if(!existe){
	
        Curso nuevo= new Curso(name, departamento, nivel);  
		try{
			pm.makePersistent(nuevo);
			response.sendRedirect("/course/view");
			
		}
		finally {
			pm.close();
		}
		}
		else {
			request.setAttribute("existe", existe);
			request.getRequestDispatcher("/WEB-INF/view/course/add.jsp").forward(request, response);
			}
		}
		
		else{
			request.setAttribute("existe", existe);
			request.getRequestDispatcher("/WEB-INF/view/course/add.jsp").forward(request, response);
			
		}
		
	}

}