package com.cosmet.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
	
	@NotEmpty(message="please enter firstname")
private String Firstname;
	
	@NotEmpty(message="Please Enter the Secondname")
private String lastname;
	
	@NotEmpty(message="Please Enter the valid Email")
	@Email(message="Invalid Email address")
private String email;
	
	@NotEmpty(message="Invlid PhoneNo")
	@Length(max=10,min=10)
private String phoneno;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="users_id")
@Valid
private Users users;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="billingaddress_id")
@Valid
private BillingAddress billingAddress;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="shippingaddress_id")
@Valid
private ShippingAddress shippingAddress;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cart_id")
private Cart cart;

									/*Generating Getter And Setter Method*/

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getFirstname() {
	return Firstname;
}

public void setFirstname(String firstname) {
	this.Firstname = firstname;
}

public String getLastname() {
	return lastname;
}

public void setLastname(String lastname) {
	this.lastname = lastname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhoneno() {
	return phoneno;
}

public void setPhoneno(String phoneno) {
	this.phoneno = phoneno;
}

public Users getUsers() {
	return users;
}

public void setUsers(Users users) {
	this.users = users;
}

public BillingAddress getBillingAddress() {
	return billingAddress;
}

public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}

public ShippingAddress getShippingAddress() {
	return shippingAddress;
}

public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

}