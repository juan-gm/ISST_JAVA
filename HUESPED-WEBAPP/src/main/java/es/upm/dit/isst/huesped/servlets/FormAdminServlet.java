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


@WebServlet("/FormAdminServlet")
public class FormAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	                       throws ServletException, IOException {
	  // autorización: check root
	  String email = request.getParameter("email");
	  Client client = ClientBuilder.newClient(new ClientConfig());
	  Huesped huesped = null;
	  try {
	         huesped = client.target(URLHelper.getURL() + "/" + email)
	              .request().accept(MediaType.APPLICATION_JSON).get(Huesped.class);
	  } catch(Exception e) {}
	  if (huesped != null) {
	        huesped.setSurname(request.getParameter("surname"));
	        huesped.setName(request.getParameter("name"));
	        huesped.setPassword(request.getParameter("password"));
	        huesped.setDni(Integer.parseInt(request.getParameter("dni")));
	        huesped.setRoomNumber(Integer.parseInt(request.getParameter("roomNumber")));
	        huesped.setCreditCard(Integer.parseInt(request.getParameter("creditCard")));
	        huesped.setTelephoneNumber(Integer.parseInt(request.getParameter("telephoneNumber")));
	        //huesped.setMark(Double.parseDouble(request.getParameter("mark")));
	        client.target(URLHelper.getURL() + "/" +email)
	          .request()
	          .post(Entity.entity(huesped, MediaType.APPLICATION_JSON), Response.class);
	        List<Huesped> huespedes = client.target(URLHelper.getURL())
	          .request().accept(MediaType.APPLICATION_JSON)
	          .get(new GenericType<List<Huesped>>() {});
	        request.setAttribute("huespedes", huespedes);
	  }
	  getServletContext().getRequestDispatcher("/Admin.jsp").forward(request,response);
	}

}

