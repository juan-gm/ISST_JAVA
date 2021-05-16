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
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;

import es.upm.dit.isst.huesped.model.Huesped;


@WebServlet("/FormVipServlet")
public class FormVipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	               throws ServletException, IOException {
	  // autorizacion
	  String email = req.getParameter("huespedemail");
	  Client client = ClientBuilder.newClient(new ClientConfig());
	  Huesped huesped = null;
	  try { huesped = client.target(URLHelper.getURL() + "/" + email)
	              .request().accept(MediaType.APPLICATION_JSON).get(Huesped.class);}
	  catch(Exception e) {}
	  if (huesped != null) {
//	    // autorización
//	    if (huesped.getStatus() == 1 || huesped.getStatus() == 4 || huesped.getStatus() == 6) {
//	        huesped.setStatus(huesped.getStatus()+1);
//	        if (req.getParameter("mark") != null) {
//	                String m = req.getParameter("mark").replace(",", ".");
//	                //huesped.setMark(Double.parseDouble(m));
//	        }
//	        client.target(URLHelper.getURL()+ "/" + email).request()
//	           .post(Entity.entity(huesped, MediaType.APPLICATION_JSON), Response.class);
//	    }
	    List<Huesped> huespedes = client.target(URLHelper.getURL() + "/dni/"+ huesped.getdni())
	                                .request().accept(MediaType.APPLICATION_JSON)
	                              .get(new GenericType<List<Huesped>>() {});
	    req.setAttribute("huespedes", huespedes);
	  }
	  getServletContext().getRequestDispatcher("/Vip.html").forward(req,resp);

	}

	
}
