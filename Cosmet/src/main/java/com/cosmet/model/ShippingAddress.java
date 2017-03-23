package com.cosmet.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotEmpty(message="Which Door we have to knock!!!")
	private String ApartmentNo;
	
	@NotEmpty(message="Which Street we want to wander")
	private String StreetName;
	
	@NotEmpty(message="Which City you are in the vast World!")
	private String City;
	
	@NotEmpty(message="Which State you are located?")
	private String State;
	
	@NotEmpty(message="Which country we want to deliver?")
	private String Country;
	
	@NotEmpty(message="Dont Forgot me!!! Pincode ;)")
	private String Pincode;

									/*Generating Getters and Setters Method*/
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApartmentNo() {
		return ApartmentNo;
	}

	public void setApartmentNo(String apartmentNo) {
		ApartmentNo = apartmentNo;
	}

	public String getStreetName() {
		return StreetName;
	}

	public void setStreetName(String streetName) {
		StreetName = streetName;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public String getPincode() {
		return Pincode;
	}

	public void setPincode(String pincode) {
		Pincode = pincode;
	}
									
}