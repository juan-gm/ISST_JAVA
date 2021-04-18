package es.upm.dit.isst.huesped.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;

import es.upm.dit.isst.huesped.model.Huesped;

/**
 * Servlet implementation class FormCreaHuespedServlet
 */
@WebServlet("/FormCreaHuespedServlet")
public class FormCreaHuespedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String huespedEmail = req.getParameter("email");
	        if (huespedEmail.indexOf("gmail.com") > 0) {
	                Huesped huesped = new Huesped();
	                huesped.setEmail(req.getParameter("email"));
	                //huesped.setGrade(00000);
	                huesped.setName(req.getParameter("name"));
	                huesped.setSurname(req.getParameter("surname"));
	                huesped.setPassword(req.getParameter("password"));
	                huesped.setDni(Integer.parseInt(req.getParameter("dni")));
	                huesped.settoPayAccount(0);
	                huesped.setRoomNumber(Integer.parseInt(req.getParameter("roomNumber")));
	                huesped.setCreditCard(Integer.parseInt(req.getParameter("creditCard")));
	                huesped.setTelephoneNumber(Integer.parseInt(req.getParameter("telephoneNumber")));
	                Client client = ClientBuilder.newClient(new ClientConfig());
	                Response r = client.target(URLHelper.getURL()).request()
	                        .post(Entity.entity(huesped, MediaType.APPLICATION_JSON)
	                       , Response.class);
	                if (r.getStatus() == 200) {
	                        req.getSession().setAttribute("huesped", huesped);
	                        getServletContext().getRequestDispatcher("/Huesped.jsp")
	                              .forward(req, resp);
	                        return;
	                }
	        }        
	        getServletContext().getRequestDispatcher("/index.html").forward(req, resp);
	}

}
