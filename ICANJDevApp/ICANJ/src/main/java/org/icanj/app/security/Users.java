package org.icanj.app.security;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="users")
public class Users implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6597931301125404888L;

	
	@Column(name="MEMBER_ID",unique=true)
	private long memberId;
	
	@Id
	@Column(name="USERNAME", nullable = false, length = 50)
	private String username;
	
	@Column(name="PASSWORD", nullable = false)
	private String password;
	
	
	@Column(name="ENABLED", nullable = false, length = 10)
	private String enabled;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "users", cascade = CascadeType.ALL)
	private Authorities authorities;
	
	public Authorities getAuthorities() {
		return authorities;
	}


	public void setAuthorities(Authorities authorities) {
		this.authorities = authorities;
	}


	public long getMemberId() {
		return memberId;
	}


	public void setMemberId(long memberId) {
		this.memberId = memberId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEnabled() {
		return enabled;
	}


	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
}
