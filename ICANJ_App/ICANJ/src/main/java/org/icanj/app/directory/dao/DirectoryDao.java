package org.icanj.app.directory.dao;

import java.util.List;

import org.icanj.app.directory.entity.Account;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Member;

public interface DirectoryDao {

	
	public void addMember(Member member);
	public List<Member> listMembers();
	public Member getMember(Integer memberId);
	public void removeMember(Integer memberId);
	public Address findAddressById(Integer addressId);
	public List<Address> listAddresses();
	public void addNewAccount(Account account);
}
