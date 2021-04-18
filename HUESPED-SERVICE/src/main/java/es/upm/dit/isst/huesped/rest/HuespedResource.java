package es.upm.dit.isst.huesped.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.Consumes;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import es.upm.dit.isst.huesped.dao.HuespedDAOImplementation;
import es.upm.dit.isst.huesped.model.Huesped;


@Path("/Huespedes")
public class HuespedResource {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Huesped> readAll () {
	        return HuespedDAOImplementation.getInstancia().readAll();
	}
	
	@GET
	@Path("professor/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Huesped> readAll (@PathParam("id") String id) {
	        return HuespedDAOImplementation.getInstancia().readAll(id);
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response create(Huesped tnew) throws URISyntaxException {
	    Huesped t = HuespedDAOImplementation.getInstancia().create(tnew);
	    if (t != null) {
	            URI uri = new URI("/Huesped-SERVICE/rest/Huespedes/" + t.getEmail());
	            return Response.created(uri).build();
	    }
	    return Response.status(Response.Status.NOT_FOUND).build();
	}
	
    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response read(@PathParam("id") String id) {
        Huesped t = HuespedDAOImplementation.getInstancia().read(id);
        if (t == null)
          return Response.status(Response.Status.NOT_FOUND).build();
        return Response.ok(t, MediaType.APPLICATION_JSON).build();
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response update(@PathParam("id") String id, Huesped t) {
            System.out.println("Update request for" + id + " " + t.toString());
        Huesped told = HuespedDAOImplementation.getInstancia().read(id);
        if ((told == null) || (! told.getEmail().contentEquals(t.getEmail())))
          return Response.notModified().build();
        HuespedDAOImplementation.getInstancia().update(t);
        return Response.ok().build();                
    }
    
    @DELETE
    @Path("{id}")
    public Response delete(@PathParam("id") String  id) {
        Huesped rold = HuespedDAOImplementation.getInstancia().read(id);
        if (rold == null)
            return Response.notModified().build();
        HuespedDAOImplementation.getInstancia().delete(rold);
        return Response.ok().build();
    }


}
