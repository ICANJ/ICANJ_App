package org.icanj.app.directory.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.icanj.app.security.ICAAuthenticationService;
import org.icanj.app.utils.AppConstant;
import org.icanj.app.utils.JSPAlert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Directory")
public class DirectoryController {
	
	@Autowired
	private DirectoryService directoryServiceImpl;
	
	private static final Logger logger = LoggerFactory
			.getLogger(DirectoryController.class);
	
	@RequestMapping(value= "/Families", method =RequestMethod.GET)
	public String viewAllFamilies(ModelMap model){
		
		List<Family> families = directoryServiceImpl.listFamilies();
			
		model.addAttribute("families", families);
		return "Directory/viewAll";
			
	}
	
	@RequestMapping(value= "/getMembers", method =RequestMethod.POST)
	public String getMembers(@RequestParam("familyId") String familyId, ModelMap model){
		long fId= Long.parseLong(familyId);
		
		List<Member> members = directoryServiceImpl.listMemberByFamily(fId);
		Family family = directoryServiceImpl.getFamily(fId);
		model.addAttribute("members", members);
		model.addAttribute("family", family);
		return "Directory/familyDetails";
	}
	
	@RequestMapping(value= "/ContactInfo")
	public String viewFamily(ModelMap model,Principal principal){
		Family family = null;
		List<Member> members = null;
		
		try{
		String userName = principal.getName();
		Member m = directoryServiceImpl.getMemberFromPrincipal(userName);
		long fId= m.getFamilyId();
		
		//members = directoryServiceImpl.listMemberByFamily(fId);
		family = directoryServiceImpl.getFamily(fId);
		//model.addAttribute("members", members);
		model.addAttribute("family", family);
		return "/Profile/familyDetails";
		}
		catch(Exception ex){
		
		logger.error(ex.getLocalizedMessage(),ex);	
		return "Core/500";
		}
	}
	
	
	@RequestMapping(value= "/UpdateFamily", method =RequestMethod.POST)
	public String updateFamily(HttpServletRequest request,ModelMap model) throws Exception{
		Family f = directoryServiceImpl.getFamily(Long.parseLong(request.getParameter("familyId")));
		directoryServiceImpl.updateFamily(request);
		model.addAttribute("family", f);
		return "/Profile/familyDetails";
		
	}	
}
