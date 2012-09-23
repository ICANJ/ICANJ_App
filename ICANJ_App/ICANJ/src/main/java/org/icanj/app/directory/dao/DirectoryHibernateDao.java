package org.icanj.app.directory.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import org.icanj.app.HomeController;
import org.icanj.app.directory.entity.Account;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Member;

@Repository
public class DirectoryHibernateDao implements DirectoryDao {
	
	private static final Logger logger = LoggerFactory.getLogger(DirectoryHibernateDao.class);
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addMember(Member member) {
		// Persists Member Entity
		hibernateTemplate.saveOrUpdate(member);

	}

	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly= true)
	public List<Member> listMembers() {
		return hibernateTemplate.find("from MEMBER");
	}

	@Transactional(readOnly= true)
	public Member getMember(Integer memberId) {
		// Find Member by Id
		return hibernateTemplate.get(Member.class, memberId);
	}

	@Transactional
	public void removeMember(Integer memberId) {
		// Remove Member by Id
		Member member = getMember(memberId);
		hibernateTemplate.delete(member);
		
	}

	@Transactional(readOnly=true)
	public Address findAddressById(Integer addressId) {
		return hibernateTemplate.get(Address.class, addressId);
		
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true)
	public List<Address> listAddresses(){
		return hibernateTemplate.find("from MEMBER_ADDRESS");
	}


	public void addNewAccount(Account account) {
		hibernateTemplate.save(account);
		
	}

}
