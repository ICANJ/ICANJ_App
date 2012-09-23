package org.icanj.app.directory.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity
@Table(name="MEMBER_ADDRESS")
public class Address implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8329638216112300626L;
	
	@Id
	@GeneratedValue
	@Column(name="address_id")
	private int addressId;
	
	@Column(name="address_street", nullable= false, length= 100)
	private String streetAddress;
	

	@Column(name="address_city", nullable= false, length= 50)
	private String city;
	
	@Column(name="address_state", nullable= false, length= 25)
	private String state;
	
	@Column(name="address_country", nullable= false, length= 50)
	private String country;
		

	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}
