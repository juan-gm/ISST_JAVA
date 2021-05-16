package es.upm.dit.isst.huesped.model;

import java.io.Serializable;
import java.util.Arrays;

import javax.persistence.*;




@Entity
public class Huesped implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	@Id
	private String email;
	private String password;
	private String name;
	private String surname;
	private int dni;
	private int toPayAccount;
	private int roomNumber;
	private int creditCard;
	private int telephoneNumber;


    // private List <Solicitudes> [String];

	// @Lob
	// private byte[] document;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getdni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public int gettoPayAccount() {
		return toPayAccount;
	}

	public void settoPayAccount(int toPayAccount) {
		this.toPayAccount = toPayAccount;
	}
	

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(int creditCard) {
		this.creditCard = creditCard;
	}

	public int getTelephoneNumber() {
		return telephoneNumber;
	}

	public void setTelephoneNumber(int telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + dni;
		result = prime * result + toPayAccount;
		result = prime * result + creditCard;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + roomNumber;
		result = prime * result + ((surname == null) ? 0 : surname.hashCode());
		result = prime * result + telephoneNumber;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Huesped other = (Huesped) obj;
		if (dni != other.dni)
			return false;
		if (toPayAccount != other.toPayAccount)
			return false;
		if (creditCard != other.creditCard)
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (roomNumber != other.roomNumber)
			return false;
		if (surname == null) {
			if (other.surname != null)
				return false;
		} else if (!surname.equals(other.surname))
			return false;
		if (telephoneNumber != other.telephoneNumber)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Huesped [email=" + email + ", password=" + password + ", name=" + name + ", surname=" + surname
				+ ", dni=" + dni + ", toPayAccount=" + toPayAccount + ", roomNumber=" + roomNumber + ", creditCard="
				+ creditCard + ", telephoneNumber=" + telephoneNumber + "]";
	}

	public Huesped() {

	}

}
