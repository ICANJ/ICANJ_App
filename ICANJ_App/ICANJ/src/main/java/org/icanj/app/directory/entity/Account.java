package org.icanj.app.directory.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "ACCOUNT",  uniqueConstraints = {
		@UniqueConstraint(columnNames = "account_email_address")})

public class Account implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2665364042828346649L;

	@Id
    @GeneratedValue
    @Column(name="member_id")
    private Long memberId;
	
	@Column(name="account_email_address", nullable = false, length = 100 )
	private String emailAddress;
	
	@Column(name="account_login_key", nullable = false, length = 100 )
	private String loginKey;
	
	@Column(name="account_active_flag", nullable = false)
	private char activeFlag;
	
	@Column(name="account_create_date", nullable = false )
	private Date accountCreateDate;
	
	@Column(name="account_created_by", nullable = false, length = 50 )
	private String accountCreateBy;
	
	@OneToOne(mappedBy = "account", cascade = CascadeType.ALL)
	private Member member;
	
	
	public long getMemberId() {
		return memberId;
	}
	public void setMemberId(long memberId) {
		this.memberId = memberId;
	}
	
	
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getLoginKey() {
		return loginKey;
	}
	public void setLoginKey(String loginKey) {
		this.loginKey = loginKey;
	}
	public char getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(char activeFlag) {
		this.activeFlag = activeFlag;
	}
	public Date getAccountCreateDate() {
		return accountCreateDate;
	}
	public void setAccountCreateDate(Date accountCreateDate) {
		this.accountCreateDate = accountCreateDate;
	}
	public String getAccountCreateBy() {
		return accountCreateBy;
	}
	public void setAccountCreateBy(String accountCreateBy) {
		this.accountCreateBy = accountCreateBy;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}

}
