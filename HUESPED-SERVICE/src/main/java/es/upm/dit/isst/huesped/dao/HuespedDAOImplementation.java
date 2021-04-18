package es.upm.dit.isst.huesped.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import es.upm.dit.isst.huesped.model.Huesped;

public class HuespedDAOImplementation implements HuespedDAO {

	private static  HuespedDAOImplementation instancia = null;
	  private HuespedDAOImplementation() {
	  }

	 public static HuespedDAOImplementation getInstancia() {
	    if( null == instancia )
	      instancia = new HuespedDAOImplementation();
	    return instancia;
	  }
	
	
	 @Override
	 public Huesped create(Huesped huesped) {
		  Session session = SessionFactoryService.get().openSession();
		  session.beginTransaction();
			 try {
				 session.save(huesped);
			 } catch(Exception e) {
				 huesped = null;
			 }
			 session.getTransaction().commit();
			 session.close();
		  return huesped;
	 }


	 @Override
	 public Huesped read (String email) {
		  Session session = SessionFactoryService.get().openSession();
		  session.beginTransaction();
		  Huesped huesped = session.get(Huesped.class, email);
		  session.getTransaction().commit();
		  session.close();
		  return huesped;
	 }

	 @Override
	 public Huesped update(Huesped huesped) {
		  Session session = SessionFactoryService.get().openSession();
		  session.beginTransaction();
		  session.saveOrUpdate(huesped);
		  session.getTransaction().commit();
		  session.close();
		  return huesped;
	 }

	 @Override
	 public Huesped delete(Huesped huesped) {
		  Session session = SessionFactoryService.get().openSession();
		  session.beginTransaction();
		  session.delete(huesped);
		  session.getTransaction().commit();
		  session.close();
		  return huesped;
	 }

	 @SuppressWarnings("unchecked")
	 @Override
	 public List<Huesped> readAll() {
		 List<Huesped> huespeds = new ArrayList<Huesped> ();
		  Session session = SessionFactoryService.get().openSession();
		  session.beginTransaction();
		  huespeds.addAll(session.createQuery("from Huesped").list());
		  session.getTransaction().commit();
		  session.close();
		  return huespeds;
	 }


	 @Override
	 public List<Huesped> readAll(String Email) {
		 List<Huesped> res = new ArrayList<Huesped>();
		 for (Huesped huesped : this.readAll())
		 if (huesped.getEmail().equals(Email))
		 res.add(huesped);
		 return res;
	 }

}
