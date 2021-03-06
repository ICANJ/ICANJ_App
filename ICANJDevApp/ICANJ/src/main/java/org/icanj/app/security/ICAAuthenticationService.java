/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.security;

import java.util.Collection;
import java.util.List;

import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class ICAAuthenticationService {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private DirectoryDao directoryhibernateDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory
			.getLogger(ICAAuthenticationService.class);
	
	public boolean createMemberAccount(long memberId, String emailAddress, String password){
		
		try{
		Users user = new Users();
		Authorities authority = new Authorities();
		
		//Encoding Password
		String encodedPassword = passwordEncoder.encodePassword(password, null);
		user.setUsername(emailAddress);
		user.setEnabled("TRUE");
		user.setMemberId(memberId);
		user.setPassword(encodedPassword);
		authority.setAuthority("ROLE_USER");
		user.setAuthorities(authority);
		authority.setUsers(user);
		hibernateTemplate.save(user);
		
		Member member =  directoryhibernateDao.getMember(memberId);
		member.setInteractiveAccess(true);
		member.setEmail(emailAddress);
		directoryhibernateDao.addMember(member);
		
		return true;
		}
		catch(Exception e){
			logger.error(e.toString());
			return false;
		}
	
	}
	
	public boolean hasAdminRole(){
		
		boolean status = false;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Collection<GrantedAuthority> ls = auth.getAuthorities();
		for(GrantedAuthority authority: ls){
			if(authority.toString().equals("ROLE_ADMIN"))
				status=true;
		}
		
		return status;
	}
}
