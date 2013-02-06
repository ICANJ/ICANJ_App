/**
 * **********************************************************************
 *
 * Copyright 2012 - ICANJ
 *
 ***********************************************************************
 */
package org.icanj.app.directory.service;

import java.util.HashMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.velocity.VelocityEngineUtils;

import org.apache.velocity.app.VelocityEngine;
import org.icanj.app.directory.dao.DirectoryDao;
import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.utils.HTTPUtils;

@Service
public class DirectoryServiceImpl implements DirectoryService {

	private static final Logger logger = LoggerFactory
			.getLogger(DirectoryServiceImpl.class);
	@Autowired
	private DirectoryDao directoryhibernateDao;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private VelocityEngine velocityEngine;

	public boolean addMember(HttpServletRequest request) {

		Member member = new Member();

		long familyId = Long.parseLong(request.getParameter("familyId"));
		member.setFamilyId(familyId);

		directoryhibernateDao.addMember(member);
		return false;

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

	private void sendConfirmationEmail(final Family family) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(family.getEmailAddress());
				message.setFrom("administrator@icanj.org");
				message.setSubject("Welcome to my.icanj.org");// could be
																// parameterized...
				Map model = new HashMap();
				model.put("family", family);
				String text = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "familySignup.vm", model);
				message.setText(text, true);
			}

		};
		this.mailSender.send(preparator);
	}

	public boolean addFamily(HttpServletRequest request) {

		try {
				if (HTTPUtils.validateParameter(request, "familyNameF", 2)
						&& HTTPUtils.validateParameter(request, "familyNameL")
						
						&& HTTPUtils.validateParameter(request, "emailAddress")
						&& HTTPUtils.validateParameter(request,
								"streetAddress", 2)
						&& HTTPUtils.validateParameter(request, "city", 2)
						&& HTTPUtils.validateParameter(request, "state", 2)
						&& HTTPUtils.validateParameter(request, "country", 2)) {

					Family family = new Family();
					Address address = new Address();

					String homePhone = request.getParameter("i1").trim()
							+ request.getParameter("i2").trim()
							+ request.getParameter("i3").trim();

					family.setFamilyName(request.getParameter("familyNameF")
							.trim()
							+ " "
							+ request.getParameter("familyNameL").trim());
					family.setEmailAddress(request.getParameter("emailAddress")
							.trim());
					family.setHomePhoneNumber(homePhone);
					address.setStreetAddress(request.getParameter(
							"streetAddress").trim());
					address.setCity(request.getParameter("city").trim());
					address.setState(request.getParameter("state").trim());
					address.setCountry(request.getParameter("country").trim());
					address.setParkingDetails(request.getParameter(
							"parkingInfo").trim());
					family.setAddress(address);
					address.setFamily(family);
					directoryhibernateDao.addFamily(family);

					logger.debug("Family Details for " + family.getFamilyName()
							+ " were added sucessfully.");
					logger.debug("Emailing User Registration link @ "
							+ family.getEmailAddress());

					try {
						sendConfirmationEmail(family);
						logger.debug("Emailed user " + family.getFamilyName()
								+ " @ " + new Date());
					} catch (Exception e) {
						logger.warn(
								"Error emailing user " + family.getFamilyName()
										+ " @ " + e.getMessage(), e);
					}

					return true;
				} else {
					return false;
				}

		} catch (Exception e) {

			logger.warn("Error persisting new Family entity in Directory Service."
							+ e.getMessage(), e);
			return false;
		}
	}

	public List<Member> listMemberByFamily(long familyId) {

		return directoryhibernateDao.listMemberByFamily(familyId);
	}

	public Family getFamilyHomePhoneNo(String homePhoneNumber) {
		return directoryhibernateDao.getFamilyHomePhoneNo(homePhoneNumber);
	}

	@Override
	@Transactional
	public boolean addMembers(HttpServletRequest request) {
		
		try {
			long familyId = Long.parseLong(request.getParameter("familyId"));
			for(int i=0; i<=5 ; i++){
				if(HTTPUtils.validateParameter(request, "m"+i+"FirstName")&&
				   HTTPUtils.validateParameter(request, "m"+i+"LastName")){
				Member member = new Member();
				member.setFamilyId(familyId);
				member.setFirstName(request.getParameter("m"+i+"FirstName"));
				member.setMiddleName(request.getParameter("m"+i+"MiddleName"));
				member.setLastName(request.getParameter("m"+i+"LastName"));
				member.setMemberRelation(request.getParameter("m"+i+"Relation"));
				member.setInteractiveAccess(false);

				directoryhibernateDao.addMember(member);
				
				}
				
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		

	}

	@Override
	public List<Member> MemFamilyNoInteractive(long familyId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.MemFamilyNoInteractive(familyId);
	}

	@Override
	public Family getFamily(long familyId) {
		// TODO Auto-generated method stub
		return directoryhibernateDao.getFamily(familyId);
	}

	@Override
	public List<Family> listFamilies() {

		return directoryhibernateDao.listFamilies();
	}

	@Override
	public Member getMemberFromPrincipal(String principal) {

		return directoryhibernateDao.getMemberFromPrincipal(principal);
	}

	/**
	 * Implementation for updateFamily
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@Override
	public boolean updateFamily(HttpServletRequest request) throws Exception {

		if (HTTPUtils.validateParameter(request, "familyName", 2)
				&& HTTPUtils.validateParameter(request, "familyId", 2)
				&& HTTPUtils.validateParameter(request, "street", 2)
				&& HTTPUtils.validateParameter(request, "city", 2)
				&& HTTPUtils.validateParameter(request, "state", 2)
				&& HTTPUtils.validateParameter(request, "zip", 2)
				&& HTTPUtils.validateParameter(request, "homePhoneNumber", 2)) {

			String familyId = request.getParameter("familyId");
			Family family = directoryhibernateDao.getFamily(Long
					.parseLong(familyId));
			Address address = directoryhibernateDao.findAddressById(Long
					.parseLong(familyId));

			family.setFamilyName(request.getParameter("familyName").trim());
			family.setHomePhoneNumber(request.getParameter("homePhoneNumber")
					.trim());
			family.setTagLine(request.getParameter("familyTagLine").trim());
			address.setStreetAddress(request.getParameter("street").trim());
			address.setCity(request.getParameter("city").trim());
			address.setState(request.getParameter("state").trim());
			address.setZip(request.getParameter("zip").trim());
			address.setParkingDetails(request.getParameter("parkingInfo")
					.trim());
			family.setAddress(address);
			address.setFamily(family);

			// This method uses add or update hibernate function.
			directoryhibernateDao.addFamily(family);
			return true;

		} else {
			return false;
		}
	}

	@Override
	public List<Member> searchMembers(String srchCriteria) {
		return directoryhibernateDao.searchMembers(srchCriteria);

	}

	/**
	 * Implementation for updateMember
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@Override
	public boolean updateMember(HttpServletRequest request) throws Exception {

		if (HTTPUtils.validateParameter(request, "memberId", 2)
				&& HTTPUtils.validateParameter(request, "familyId", 2)
				&& HTTPUtils.validateParameter(request, "email", 2)
				&& HTTPUtils.validateParameter(request, "firstName", 2)
				&& HTTPUtils.validateParameter(request, "lastName", 2)
				&& HTTPUtils.validateParameter(request, "gender", 1)
				&& HTTPUtils.validateParameter(request, "dateOfBirth", 2)
				&& HTTPUtils.validateParameter(request, "cellPhoneNumber", 2)
				&& HTTPUtils.validateParameter(request, "memberRelation", 1)) {

			String memberId = request.getParameter("memberId");
			Member member = directoryhibernateDao.getMember(Long
					.parseLong(memberId));
			String s;
			Date date;
			DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");

			member.setMemberId(Long.parseLong(request.getParameter("memberId")
					.trim()));
			member.setCellPhoneNumber(request.getParameter("cellPhoneNumber")
					.trim());
			member.setWorkPhoneNumber(request.getParameter("workPhoneNumber")
					.trim());
			member.setFamilyId(Long.parseLong(request.getParameter("familyId")
					.trim()));
			member.setEmail(request.getParameter("email").trim());
			member.setFamilyId(Long.parseLong(request.getParameter("familyId")
					.trim()));
			member.setFirstName(request.getParameter("firstName").trim());
			member.setLastName(request.getParameter("middleName").trim());
			member.setMiddleName(request.getParameter("lastName").trim());
			member.setNickName(request.getParameter("nickName").trim());
			member.setGender(request.getParameter("gender").trim());
			date = (Date) formatter.parse(request.getParameter("dateOfBirth")
					.trim());
			member.setDateOfBirth(date);
			member.setMemberRelation(request.getParameter("memberRelation")
					.trim());
			return true;
		} else {

			return false;
		}

	}
}
