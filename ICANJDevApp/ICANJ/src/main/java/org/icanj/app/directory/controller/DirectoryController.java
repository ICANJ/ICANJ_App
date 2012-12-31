package org.icanj.app.directory.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.directory.entity.Address;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Directory")
public class DirectoryController {
	
	@Autowired
	private DirectoryService directoryServiceImpl;
	
	
	
	@RequestMapping(value= "/Families", method =RequestMethod.GET)
	public String viewAllFamilies(ModelMap model){
		
		List<Family> families = directoryServiceImpl.listFamilies();
			
		
		System.out.println(families.size());
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
		
}
