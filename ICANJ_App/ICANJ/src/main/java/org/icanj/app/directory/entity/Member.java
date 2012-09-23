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
	@Column(name="member_id")
	@GeneratedValue(generator = "generator")
	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter( name = "property", value = "account"))
	private long memberId;
	
	@Column(name="member_first_name", nullable = false, length = 30)
	private String firstName;
	
	@Column(name="member_last_name", nullable = false, length = 30)
	private String lastName;
	
		
	@Column(name="member_home_phone", length = 10)
	private String homePhoneNumber;
	
	@Column(name="member_cell_phone", nullable = false, length = 10)
	private String cellPhoneNumber;
	
	@Column(name="member_work_phone", length = 10)
	private String workPhoneNumber;
	
	@Column(name="member_dob", nullable = false)
	private Date dateOfBirth;
	
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="address_id")
	private Address address;
    
    @OneToOne
    @PrimaryKeyJoinColumn
    private Account account;
	
	
	
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
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
	
	
	public String getHomePhoneNumber() {
		return homePhoneNumber;
	}
	public void setHomePhoneNumber(String homePhoneNumber) {
		this.homePhoneNumber = homePhoneNumber;
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
	
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	
	

}
