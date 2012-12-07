package org.icanj.app.directory.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.dao.DirectoryHibernateDao;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;

@Service
public class DirectoryServiceImpl implements DirectoryService {

	@Autowired
	private DirectoryDao directoryhibernateDao;

	public void addMember(HttpServletRequest request) {
		
		Member member = new Member();

		long familyId = Long.parseLong(request.getParameter("familyId"));
		member.setFamilyId(familyId);
		
		directoryhibernateDao.addMember(member);

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

	public void addFamily(HttpServletRequest request) {
				
		Family family = new Family();
		Address address = new Address();
		
		family.setFamilyName(request.getParameter("familyName"));
		family.setHomePhoneNumber(request.getParameter("homePhoneNumber"));
		address.setStreetAddress(request.getParameter("streetAddress"));
		address.setCity(request.getParameter("city"));
		address.setState(request.getParameter("state"));
		address.setCountry(request.getParameter("country"));
		address.setParkingDetails(request.getParameter("parkingInfo"));
		family.setAddress(address);
		address.setFamily(family);
		directoryhibernateDao.addFamily(family);
	}

	public List<Member> listMemberByFamily(long familyId) {

		return directoryhibernateDao.listMemberByFamily(familyId);
	}

}
