//package es.upm.dit.isst.huesped.servlets;
//
//import java.io.ByteArrayOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;
//import javax.ws.rs.client.Client;
//import javax.ws.rs.client.ClientBuilder;
//import javax.ws.rs.client.Entity;
//import javax.ws.rs.core.MediaType;
//import javax.ws.rs.core.Response;
//
//import org.glassfish.jersey.client.ClientConfig;
//
//import es.upm.dit.isst.huesped.model.Huesped;
//
//@WebServlet("/FormSubeMemoriaServlet")
//public class FormSubeMemoriaServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//	  @Override
//	  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
//	               throws ServletException, IOException {
//	    // autorizacion, comprobar
//	    String email = req.getParameter("huespedemail");
//	    Client client = ClientBuilder.newClient(new ClientConfig());
//	    Huesped huesped = null;
//	    try {
//	         huesped = client.target(URLHelper.getURL() + "/" + email)
//	           .request().accept(MediaType.APPLICATION_JSON).get(Huesped.class);
//	    } catch(Exception e) {}
//	    // autorizacion
//	    if ((huesped != null) && (huesped.getStatus() == 3)) {
//	         Part filePart = req.getPart("file");
//	         InputStream fileContent = filePart.getInputStream();
//	         ByteArrayOutputStream output = new ByteArrayOutputStream();
//	         byte[] buffer = new byte[1024];
//	         for (int length = 0; (length = fileContent.read(buffer)) > 0;)
//	                 output.write(buffer, 0, length);
//	         huesped.setDocument(output.toByteArray());
//	         huesped.setStatus(4);
//	        client.target(URLHelper.getURL() + "/" + huesped.getEmail()).request()
//	                 .post(Entity.entity(huesped, MediaType.APPLICATION_JSON), Response.class);
//	         req.setAttribute("huesped", huesped);
//	     }
//	    getServletContext().getRequestDispatcher("/Huesped.jsp").forward(req,resp);
//	  }
//
//
//}
