package org.icanj.app;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;

import org.springframework.test.context.ContextConfiguration;

import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.icanj.app.directory.entity.Account;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.icanj.app.directory.service.DirectoryServiceImpl;

@ContextConfiguration(locations={"/WEB-INF/spring/root-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)  
public class DirectoryServiceTest {
	
	@Autowired
	private DirectoryService directoryServiceImpl;
	
	@Autowired
	private Address address;
	
	@Autowired
	private Member member;

	
	@Test
	public void sampleTest() {
		
		java.util.Date myDate = new java.util.Date("10/10/2009"); 
		java.sql.Date sqlDate = new java.sql.Date(myDate.getDate()); 

		Address address = new Address();
		Member member = new Member();
		Account account = new Account();
		
		String password = "plaintextPassword";
		
		
		account.setEmailAddress("robinvk6@gmail4.com");
		account.setLoginKey(password);
		account.setAccountCreateBy("robinvk6@gmail.com");
		account.setAccountCreateDate(myDate);
	
		account.setActiveFlag('A');
		
		
		address.setCity("New Milford");
		address.setStreetAddress("379 Webster Dr");
		address.setState("NJ");
		address.setCountry("USA");
		
		member.setAddress(address);
		member.setCellPhoneNumber("2012187495");
		member.setDateOfBirth(sqlDate);
		
		member.setFirstName("Robin");
		member.setHomePhoneNumber("2012187495");
		member.setLastName("Varghese");
		member.setWorkPhoneNumber("2012187495");
		account.setMember(member);
		
		directoryServiceImpl.addMember(member);

	}

}
