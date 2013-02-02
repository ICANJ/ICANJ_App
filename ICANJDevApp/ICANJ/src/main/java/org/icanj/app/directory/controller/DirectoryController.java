/**
 * **********************************************************************
 *
 * Copyright 2012 - ICANJ
 *
 ***********************************************************************
 */
package org.icanj.app.directory.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.icanj.app.utils.HTTPUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Directory")
public class DirectoryController {

	@Autowired
	private DirectoryService directoryServiceImpl;
	private static final Logger logger = LoggerFactory
					.getLogger(DirectoryController.class);

	/**
	 * Show list of all families and the family members
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/Families", method = RequestMethod.GET)
	public String viewAllFamilies(ModelMap model) {

		List<Family> families = directoryServiceImpl.listFamilies();

		model.addAttribute("families", families);
		return "Directory/viewAll";

	}
	
	@RequestMapping(value = "/SearchMember", method = RequestMethod.GET)
	@ResponseBody
	public String searchMembers(@RequestParam("srchMember") String memberCriteria, ModelMap model) {
		  
		List<Member> members = directoryServiceImpl.searchMembers(memberCriteria);
		if(members !=null){
			StringBuffer stringBuffer = new StringBuffer();
			stringBuffer.append("<table class='table table-hover'>");
			for(Member m: members){
				stringBuffer.append("<tr><td>"+m.getFirstName() + " "+ m.getLastName() +"</td>" +
						"<td><a href='#titheModal' type='button'"+
								"data-toggle='modal' class='btn btn-small'"+
								"onclick='createTitheModal("+m.getMemberId()+")'>Select Member</a></td>"
						+"</tr>");	
			}
			stringBuffer.append("</table>");
			return stringBuffer.toString();
		}else {
			return "";
		}
			

	}

	/**
	 * Get details of a family members of a specific family
	 *
	 * @param familyId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getMembers", method = RequestMethod.POST)
	public String getMembers(@RequestParam("familyId") String familyId,
					ModelMap model) {
		long fId = Long.parseLong(familyId);

		List<Member> members = directoryServiceImpl.listMemberByFamily(fId);
		Family family = directoryServiceImpl.getFamily(fId);
		model.addAttribute("members", members);
		model.addAttribute("family", family);
		return "Directory/familyDetails";
	}

	/**
	 * Get details of the family linked with the current logged in user
	 *
	 * @param model
	 * @param principal
	 * @return
	 */
	@RequestMapping(value = "/ContactInfo")
	public String viewFamily(ModelMap model, Principal principal) {
		Family family = null;
		List<Member> members = null;

		try {
			String userName = principal.getName();
			Member m = directoryServiceImpl.getMemberFromPrincipal(userName);
			long fId = m.getFamilyId();

			members = directoryServiceImpl.listMemberByFamily(fId);
			family = directoryServiceImpl.getFamily(fId);
			model.addAttribute("members", members);
			model.addAttribute("family", family);
			return "/Profile/familyDetails";
		} catch (Exception ex) {
			logger.error(ex.getLocalizedMessage(), ex);
			// model.addAttribute("message",
			// "There was a problem editing member details."
			// + "Please contact ICANJ IT Team" );
			model.addAttribute("message", ex.getStackTrace());
			return "Core/500";
		}
	}

	/**
	 * Save details of family when edited
	 *
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/UpdateFamily", method = RequestMethod.POST)
	public String updateFamily(HttpServletRequest request, ModelMap model)
					throws Exception {
		List<Member> members = null;
		Family f = null;

		try {
			f = directoryServiceImpl.getFamily(Long.parseLong(request
							.getParameter("familyId")));
			directoryServiceImpl.updateFamily(request);

			long fId = f.getFamilyId();

			members = directoryServiceImpl.listMemberByFamily(fId);

			model.addAttribute("members", members);
			model.addAttribute("family", f);
			return "/Profile/familyDetails";
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage(), e);
			return "Core/500";
		}
	}

	/**
	 * Save details of member when edited
	 *
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/UpdateMember", method = RequestMethod.POST)
	public String updateMember(HttpServletRequest request, ModelMap model)
					throws Exception {

		Long memberId = null;
		String returnUrl = "";

		try {
			if (HTTPUtils.validateParameter(request, "memberId", 2)) {
				memberId = Long.parseLong(request.getParameter("memberId"));
				directoryServiceImpl.updateMember(request);
				model.addAttribute("message", "Member Detail Saved");
				model.addAttribute("memberId", memberId);
				returnUrl = "/Profile/GetMemberProfile";
			}
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage(), e);
			model.addAttribute("message",
							"Unable to Save Member Details. Please contact ICANJ IT Team");
			return "Core/500";
		}
		return returnUrl;

	}

	/**
	 * Show details of individual member based on memberId
	 *
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/GetMemberProfile")
	public String getMemberProfile(HttpServletRequest request, ModelMap model)
					throws Exception {
		List<Member> members = null;
		Family f = null;
		Member m = null;
		String memberId = "";

		try {
			// memberId can be null and need to check before passing to
			// hibernate
			// family id won't be null because user was able to click on edit
			// detail buttin.
			//System.out.println(request.getParameter("familyId"));

			if (HTTPUtils.validateParameter(request, "memberId", 2)) {
				m = directoryServiceImpl.getMember(Long.parseLong(request
								.getParameter("memberId")));
				model.addAttribute("member", m);

				return "/Profile/memberDetails";

			} else if (HTTPUtils.validateParameter(request, "personalProfile", 2)) {

				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				String userName = auth.getName();
				Member mem = directoryServiceImpl.getMemberFromPrincipal(userName);
				model.addAttribute("member", mem);

				return "/Profile/memberDetails";

			} else {

				f = directoryServiceImpl.getFamily(Long.parseLong(request
								.getParameter("familyId")));
				long fId = f.getFamilyId();
				members = directoryServiceImpl.listMemberByFamily(fId);
				model.addAttribute("family", f);
				model.addAttribute("members", members);
				model.addAttribute("message", "Member ID not found");
				return "/Profile/familyDetails";

			}

			// get member details

			// directoryServiceImpl.updateFamily( request );


		} catch (Exception e) {
			logger.error(e.getLocalizedMessage(), e);
			// information to be displayed in bootstrap messages
			model.addAttribute("message",
							"There was a problem editing member details."
							+ "Please contact ICANJ IT Team");
			return "Core/500";
		}
	}
}
