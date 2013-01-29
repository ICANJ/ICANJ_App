/************************************************************************
 *
 * Copyright 2012 - ICANJ
 *
 ************************************************************************/

package org.icanj.app.directory.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;

@Service
public interface DirectoryService {

	public boolean addMember(HttpServletRequest request);
	public boolean addMembers(HttpServletRequest request);
	public boolean addFamily(HttpServletRequest request);
	public boolean updateFamily(HttpServletRequest request) throws Exception;
	public boolean updateMember(HttpServletRequest request) throws Exception;
	public List<Member> listMembers();
	public List<Family> listFamilies();
	public List<Member> listMemberByFamily(long familyId);
	public List<Member> MemFamilyNoInteractive(long familyId);
	public Member getMember(long memberId);
	public Family getFamily(long familyId);
	public void removeMember(long memberId);
	public Address findAddressById(long familyId);
	public List<Address> listAddresses();
	public Family getFamilyHomePhoneNo(String homePhoneNumber);
	public Member getMemberFromPrincipal(String principal);
	public List<Member> searchMembers(String srchCriteria);
	}
