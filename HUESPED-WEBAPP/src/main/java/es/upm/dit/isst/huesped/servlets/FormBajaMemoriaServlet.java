package es.upm.dit.isst.huesped.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;

import es.upm.dit.isst.huesped.model.Huesped;


@WebServlet("/FormBajaMemoriaServlet")
public class FormBajaMemoriaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	    throws ServletException, IOException {
	  // autorizacion: any
	  String email = req.getParameter("huespedemail");
	  Client client = ClientBuilder.newClient(new ClientConfig());
	  Huesped huesped = null;
	  try {   huesped=client.target(URLHelper.getURL()+"/"+ email)
	      .request().accept(MediaType.APPLICATION_JSON).get(Huesped.class);
	  }catch(Exception e) {}


	}
	
}	
