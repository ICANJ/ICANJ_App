/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.directory.dao;

import java.util.List;

import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;

public interface DirectoryDao {

	
	public void addMember(Member member);
	public void addFamily(Family family);
	public List<Member> listMembers();
	public List<Member> listMemberByFamily(long familyId);
	public Member getMember(long memberId);
	public Family getFamily(long familyId);
	public void removeMember(long memberId);
	public Address findAddressById(long familyId);
	public List<Address> listAddresses();
	public Family getFamilyHomePhoneNo(String homePhoneNumber);
	public List<Member> MemFamilyNoInteractive(long familyId);
	public List<Family> listFamilies();
	
}
