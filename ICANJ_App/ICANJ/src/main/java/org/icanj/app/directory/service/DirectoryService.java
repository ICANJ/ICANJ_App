package org.icanj.app.directory.service;

import java.util.List;

import org.springframework.stereotype.Service;

import org.icanj.app.directory.entity.Account;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Member;

@Service
public interface DirectoryService {
	
	public void addMember(Member member);
	public List<Member> listMembers();
	public Member getMember(Integer memberId);
	public void removeMember(Integer memberId);
	public Address findAddressById(Integer addressId);
	public List<Address> listAddresses();
	public void addNewAccount(Account account);

}
