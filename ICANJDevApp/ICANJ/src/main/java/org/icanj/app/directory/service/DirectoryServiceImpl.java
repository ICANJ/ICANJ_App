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
		member.setFamilyId(request.getParameter("familyId").to);
		
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

	public void addFamily(Family family) {
		directoryhibernateDao.addFamily(family);
	}

	public List<Member> listMemberByFamily(long familyId) {

		return directoryhibernateDao.listMemberByFamily(familyId);
	}

}
