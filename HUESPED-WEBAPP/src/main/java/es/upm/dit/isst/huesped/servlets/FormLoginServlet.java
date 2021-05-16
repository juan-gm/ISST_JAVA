package es.upm.dit.isst.huesped.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;

import es.upm.dit.isst.huesped.model.Huesped;

/**
 * Servlet implementation class FormLoginServlet
 */
@WebServlet("/FormLoginServlet")
public class FormLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final String ADMIN_EMAIL = "root";
    private final String ADMIN_PASSWORD = "root";        


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                       throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Client client = ClientBuilder.newClient(new ClientConfig());
        
        // autenticacion1
        if( ADMIN_EMAIL.equals(email) && ADMIN_PASSWORD.equals(password) ) {        
             req.getSession().setAttribute("admin", true);
             List<Huesped> huespedes  = client.target(URLHelper.getURL())
                    .request().accept(MediaType.APPLICATION_JSON)
                    .get(new GenericType<List<Huesped>>() {});
             req.setAttribute("huespedes", huespedes);
           getServletContext().getRequestDispatcher("/Admin.jsp")
                              .forward(req,resp);
            return;
        }
       //autenticacion2
       //Podríamos añadir la petición del número de teléfono 
        if ( email.indexOf("@gmail.com") > -1) {
                req.getSession().setAttribute("huesped", email);
                List<Huesped> huespedes  = client.target(URLHelper.getURL()
                                     + "/professor/" 
                		+ email)
                         .request().accept(MediaType.APPLICATION_JSON)
                         .get(new GenericType<List<Huesped>>() {});
                req.setAttribute("huespedes", huespedes);
                getServletContext().getRequestDispatcher("/Professor.jsp")
                              .forward(req,resp);
                return;
                
        }  
        
        if(email.indexOf("@vip") > -1) {
        	
        	 req.getSession().setAttribute("huesped", email);
             List<Huesped> huespedes  = client.target(URLHelper.getURL()
                                  + "/professor/" 
             		+ email)
                      .request().accept(MediaType.APPLICATION_JSON)
                      .get(new GenericType<List<Huesped>>() {});
             req.setAttribute("huespedes", huespedes);
             getServletContext().getRequestDispatcher("/Vip.html")
                           .forward(req,resp);
             return;
             
        }
        
        
        // autenticacion3
        Huesped huesped = null;
        try { huesped = client.target(URLHelper.getURL() + "/" + email)
                        .request().accept(MediaType.APPLICATION_JSON).get(Huesped.class);
        }catch (Exception e) {
        }
        if ( null != huesped ) {
                req.getSession().setAttribute("huesped", huesped);
                getServletContext().getRequestDispatcher("/Professor.jsp").forward(req,resp);
                return;
        }
        getServletContext().getRequestDispatcher("/index.html").forward(req,resp);
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
