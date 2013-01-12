/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.utils;

import java.util.Random;

import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.security.Authorities;
import org.icanj.app.security.ICAAuthenticationService;
import org.icanj.app.security.Users;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//Delete before Production
@Controller
@RequestMapping("/Public/bootstrap")
public class CreateAdminAccount {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private DirectoryDao directoryhibernateDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory
			.getLogger(CreateAdminAccount.class);
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String createAdminAccount(){
		
		try{
			
		Users user = new Users();
		Authorities authority = new Authorities();
		
		//Encoding Password
		String encodedPassword = passwordEncoder.encodePassword("icanj123", null);
		user.setUsername("admin"+ "@icanj.org");
		user.setEnabled("TRUE");
		user.setMemberId(0);
		user.setPassword(encodedPassword);
		authority.setAuthority("ROLE_ADMIN");
		user.setAuthorities(authority);
		authority.setUsers(user);
		hibernateTemplate.save(user);
		
		logger.info("Created Admin Account :" + user.getUsername() );
		}
		catch(Exception e){
			logger.error(e.toString());

		}
		return "home";
	
	}
		

}
