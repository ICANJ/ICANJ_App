package org.icanj.app.directory.entity;

import java.io.Serializable;
import java.util.Date; 

import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Component;
import org.hibernate.annotations.Parameter;

@Component
@Entity
@Table(name="MEMBER")
public class Member implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2660942254881136589L;
		
	
	@Id
	@Column(name="MEMBER_ID")
	@GeneratedValue
	private long memberId;
	
	@Column(name="MEMBER_FIRST_NAME", nullable = false, length = 40)
	private String firstName;
	
	@Column(name="MEMBER_MIDDLE_NAME", nullable = false, length = 30)
	private String middleName;
	
	
	@Column(name="MEMBER_LAST_NAME", nullable = false, length = 30)
	private String lastName;
	
		
	@Column(name="MEMBER_CELL_PHONE", nullable = true, length = 10)
	private String cellPhoneNumber;
	
	@Column(name="MEMBER_WORK_PHONE", length = 10)
	private String workPhoneNumber;
	
	@Column(name="MEMBER_DOB", nullable = true)
	private Date dateOfBirth;
	
	@Column(name="MEMBER_GENDER", length = 10)
	private String gender;
	
	
	@Column(name="MEMBER_RELATION", length = 10)
	private String memberRelation;
	
	@Column(name="FAMILY_ID", nullable = false)
	private long familyId;
	
	public long getFamilyId() {
		return familyId;
	}
	public void setFamilyId(long familyId) {
		this.familyId = familyId;
	}
	public String getGender() {  
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMemberRelation() {
		return memberRelation;
	}
	public void setMemberRelation(String memberRelation) {
		this.memberRelation = memberRelation;
	}
	
	
	
	public long getMemberId() {
		return memberId;
	}
	public void setMemberId(long memberId) {
		this.memberId = memberId;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	public String getCellPhoneNumber() {
		return cellPhoneNumber;
	}
	public void setCellPhoneNumber(String cellPhoneNumber) {
		this.cellPhoneNumber = cellPhoneNumber;
	}
	
	
	public String getWorkPhoneNumber() {
		return workPhoneNumber;
	}
	public void setWorkPhoneNumber(String workPhoneNumber) {
		this.workPhoneNumber = workPhoneNumber;
	}
	
	
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	
	

}
