/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.directory.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.dao.DirectoryHibernateDao;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.usersignup.SignupController;
import org.icanj.app.utils.AppConstant;
import org.icanj.app.utils.HTTPUtils;

@Service
public class DirectoryServiceImpl implements DirectoryService {

	private static final Logger logger = LoggerFactory
			.getLogger(DirectoryServiceImpl.class);

	@Autowired
	private DirectoryDao directoryhibernateDao;

	public boolean addMember(HttpServletRequest request) {

		Member member = new Member();

		long familyId = Long.parseLong(request.getParameter("familyId"));
		member.setFamilyId(familyId);

		directoryhibernateDao.addMember(member);
		return false;

	}

	public List<Member> listMembers() {
		return directoryhibernateDao.listMembers();
	}

	public Member getMember(long memberId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.getMember(memberId);
	}

	public void removeMember(long memberId) {
		directoryhibernateDao.removeMember(memberId);

	}

	public Address findAddressById(long familyId) {

		return directoryhibernateDao.findAddressById(familyId);
	}

	public List<Address> listAddresses() {

		return directoryhibernateDao.listAddresses();
	}

	public boolean addFamily(HttpServletRequest request) {

		try {
			if (HTTPUtils.validateParameter(request, "familyName")
					&& HTTPUtils.validateParameter(request, "streetAddress")
					&& HTTPUtils.validateParameter(request, "city")
					&& HTTPUtils.validateParameter(request, "state")
					&& HTTPUtils.validateParameter(request, "country")) {

				Family family = new Family();
				Address address = new Address();
				
				String homePhone= request.getParameter("i1").trim()+
						  request.getParameter("i2").trim()+
						  request.getParameter("i3").trim();

				family.setFamilyName(request.getParameter("familyName").trim());
				family.setHomePhoneNumber(homePhone);
				address.setStreetAddress(request.getParameter("streetAddress").trim());
				address.setCity(request.getParameter("city").trim());
				address.setState(request.getParameter("state").trim());
				address.setCountry(request.getParameter("country").trim());
				address.setParkingDetails(request.getParameter("parkingInfo").trim());
				family.setAddress(address);
				address.setFamily(family);
				directoryhibernateDao.addFamily(family);
				return true;
			}else{
				return false;
			}
		} catch (Exception e) {
			logger.error("Bad Incoming Request in Directory Service."
					+ e.getMessage());
			return false;
		}
	}

	public List<Member> listMemberByFamily(long familyId) {

		return directoryhibernateDao.listMemberByFamily(familyId);
	}

	public Family getFamilyHomePhoneNo(String homePhoneNumber) {
		return directoryhibernateDao.getFamilyHomePhoneNo(homePhoneNumber);
	}

	@Override
	@Transactional
	public boolean addMembers(HttpServletRequest request) {
		try{
		long familyId = Long.parseLong(request.getParameter("familyId"));
		for(int i=1; i<=5 ; i++){
			if(HTTPUtils.validateParameter(request, "m"+i+"FirstName")&&
			   HTTPUtils.validateParameter(request, "m"+i+"LastName")){
			Member member = new Member();
			member.setFamilyId(familyId);
			member.setFirstName(request.getParameter("m"+i+"FirstName"));
			member.setMiddleName(request.getParameter("m"+i+"MiddleName"));
			member.setLastName(request.getParameter("m"+i+"LastName"));
			member.setMemberRelation(request.getParameter("m"+i+"Relation"));
			member.setInteractiveAccess(false);
			
			directoryhibernateDao.addMember(member);
			}
		}
		}catch(Exception ex){
			logger.error(ex.getMessage());
		}
		return false;
	}

	@Override
	public List<Member> MemFamilyNoInteractive(long familyId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.MemFamilyNoInteractive(familyId);
	}

	@Override
	public Family getFamily(long familyId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.getFamily(familyId);
	}

	@Override
	public List<Family> listFamilies() {
		
		return directoryhibernateDao.listFamilies();
	}

}
