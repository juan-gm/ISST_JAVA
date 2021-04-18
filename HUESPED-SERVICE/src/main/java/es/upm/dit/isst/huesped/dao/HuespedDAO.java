package es.upm.dit.isst.huesped.dao;

import java.util.List;

import es.upm.dit.isst.huesped.model.Huesped;

public interface HuespedDAO {
	
	public Huesped create(Huesped huesped);
	public Huesped read(String email);
	public Huesped update(Huesped huesped);
	public Huesped delete(Huesped huesped);
	public List<Huesped> readAll();
	public List<Huesped> readAll(String Email);

}
