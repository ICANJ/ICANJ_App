package org.icanj.app.directory.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;

@Service
public interface DirectoryService {
	
	public void addMember(HttpServletRequest request);

	public void addFamily(HttpServletRequest request);
	public List<Member> listMembers();
	public List<Member> listMemberByFamily(long familyId);
	public Member getMember(long memberId);
	public void removeMember(long memberId);
	public Address findAddressById(long familyId);
	public List<Address> listAddresses();
	
}
