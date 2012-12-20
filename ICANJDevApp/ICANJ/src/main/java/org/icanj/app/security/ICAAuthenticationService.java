package org.icanj.app.security;

import org.icanj.app.directory.service.DirectoryServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class ICAAuthenticationService {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
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
		return true;
		}
		catch(Exception e){
			logger.error(e.toString());
			return false;
		}
	
	}
}
