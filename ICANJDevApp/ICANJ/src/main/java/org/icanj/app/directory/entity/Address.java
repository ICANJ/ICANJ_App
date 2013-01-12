/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.directory.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.FetchType;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "FAMILY_ADDRESS")
public class Address implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8329638216112300626L;

	@Id
	@Column(name = "FAMILY_ID", unique = true, nullable = false)
	@GeneratedValue(generator = "gen")
	@GenericGenerator(name = "gen", strategy = "foreign", parameters = @Parameter(name = "property", value = "family"))

	private long familyId;

	@Column(name = "ADDRESS_STREET", nullable = false, length = 100)
	private String streetAddress;

	@Column(name = "ADDRESS_CITY", nullable = false, length = 50)
	private String city;

	@Column(name = "ADDRESS_STATE", nullable = false, length = 25)
	private String state;

	@Column(name = "ADDRESS_COUNTRY", nullable = false, length = 50)
	private String country;
	
	@Column(name = "ADDRESS_ZIP", length = 10)
	private String zip;

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	@OneToOne(fetch = FetchType.LAZY)

	@PrimaryKeyJoinColumn
	private Family family;

	@Column(name = "PARKING_INFO", length = 250)
	private String parkingDetails;

	// Getters and Setters

	public String getParkingDetails() {
		return parkingDetails;
	}

	public void setParkingDetails(String parkingDetails) {
		this.parkingDetails = parkingDetails;
	}

	public Family getFamily() {
		return family;
	}

	public void setFamily(Family family) {
		this.family = family;
	}


	public long getFamilyId() {
		return familyId;
	}

	public void setFamilyId(long familyId) {
		this.familyId = familyId;
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
