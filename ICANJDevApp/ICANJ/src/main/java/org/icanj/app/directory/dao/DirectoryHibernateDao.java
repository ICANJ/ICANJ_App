/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

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
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.security.Users;

@Repository
public class DirectoryHibernateDao implements DirectoryDao {

	private static final Logger logger = LoggerFactory
			.getLogger(DirectoryHibernateDao.class);

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addMember(Member member) {
		// Persists Member Entity
		hibernateTemplate.saveOrUpdate(member);

	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Member> listMembers() {
		return hibernateTemplate.find("from Member");
	}

	@Transactional(readOnly = true)
	public Member getMember(long memberId) {
		return hibernateTemplate.get(Member.class, memberId);
	}

	@Transactional(readOnly = true)
	public Address findAddressById(long familyId) {
		return hibernateTemplate.get(Address.class, familyId);

	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public List<Address> listAddresses() {
		return hibernateTemplate.find("from FAMILY_ADDRESS");
	}

	public void addFamily(Family family) {
		hibernateTemplate.saveOrUpdate(family);

	}

	@SuppressWarnings("unchecked")
	public List<Member> listMemberByFamily(long familyId) {
		
		List<Member> members = hibernateTemplate.find("from Member m where m.familyId = ?",familyId);
		return members;
	}

	public void removeMember(long memberId) {
		Member member = getMember(memberId);		
		hibernateTemplate.delete(member);
	}
	
	@Transactional(readOnly = true)
	public Family getFamilyHomePhoneNo(String homePhoneNumber){
		List<Family> family = hibernateTemplate.find("from Family family where family.homePhoneNumber = ?", homePhoneNumber.trim());
		return family.size()>0 ? family.get(0) : null;		
	}

	@Override
	public List<Member> MemFamilyNoInteractive(long familyId) {
		List<Member> members = hibernateTemplate.find("from Member m where m.interactiveAccess='0' and m.familyId = ?",familyId);
		return members;
	}

	@Override
	public Family getFamily(long familyId) {		
		return hibernateTemplate.get(Family.class, familyId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Family> listFamilies() {
		return hibernateTemplate.find("from Family");
	}

	@Override
	public Member getMemberFromPrincipal(String principal) {
		List<Users> user = hibernateTemplate.find("from Users u where u.username = ?",principal);
		return user.size()>0 ? getMember(user.get(0).getMemberId()) : null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Member> searchMembers(String srchCriteria) {
		
		String query = "from Member m where m.firstName like ? OR m.lastName like ?";
		List<Member> members = hibernateTemplate.find(query, '%' + srchCriteria + '%', '%' + srchCriteria + '%');
		return members;
	}

}
