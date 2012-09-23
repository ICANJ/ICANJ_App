package org.icanj.app.directory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.dao.DirectoryHibernateDao;
import org.icanj.app.directory.entity.Account;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Member;

@Service
public class DirectoryServiceImpl implements DirectoryService {
	
	@Autowired
	private DirectoryDao directoryhibernateDao;
	
	public void addMember(Member member) {
		directoryhibernateDao.addMember(member);

	}

	public List<Member> listMembers() {
		return directoryhibernateDao.listMembers();
	}

	public Member getMember(Integer memberId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.getMember(memberId);
	}

	public void removeMember(Integer memberId) {
		directoryhibernateDao.removeMember(memberId);

	}

	public Address findAddressById(Integer addressId) {
		
		return directoryhibernateDao.findAddressById(addressId);
	}

	public List<Address> listAddresses() {
		
		return directoryhibernateDao.listAddresses();
	}

	public void addNewAccount(Account account) {
		directoryhibernateDao.addNewAccount(account);
		
	}

}
