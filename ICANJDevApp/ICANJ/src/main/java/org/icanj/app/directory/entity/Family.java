/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.directory.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.FetchType;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="FAMILY")
public class Family implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6829528968442677306L;

	@Id
	@Column(name="FAMILY_ID")
	@GeneratedValue
	private long familyId;
	
	@Column(name="FAMILY_NAME", nullable = false, length = 100)
	private String familyName;
		

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "family", cascade = CascadeType.ALL)
	private Address address;
	
	@Column(name="FAMILY_HOME_PHONE", length = 10, nullable =false)
	private String homePhoneNumber;
	
	@Column(name="FAMILY_TAGLINE", length = 200)
	private String tagLine;
	
	@Column(name="FAMILY_EMAIL_COMMUNICATION", length = 50, nullable =false)
	private String emailAddress;	
	
	public String getTagLine() {
		return tagLine;
	}

	public void setTagLine(String tagLine) {
		this.tagLine = tagLine;
	}

	public String getHomePhoneNumber() {
		return homePhoneNumber;
	}

	public void setHomePhoneNumber(String homePhoneNumber) {
		this.homePhoneNumber = homePhoneNumber;
	}

	public long getFamilyId() {
		return familyId;
	}

	public void setFamilyId(long familyId) {
		this.familyId = familyId;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
    
   }
