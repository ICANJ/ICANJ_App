/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app.usersignup;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.entity.Member;
import org.icanj.app.directory.service.DirectoryService;
import org.icanj.app.security.ICAAuthenticationService;
import org.icanj.app.utils.AppConstant;
import org.icanj.app.utils.HTTPUtils;
import org.icanj.app.utils.JSPAlert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Public/Register")
public class RegisterController {
	
	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);
	
	@Autowired
	private DirectoryService directoryServiceImpl;
	
	@Autowired
	private ICAAuthenticationService authenticationService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String landing(HttpServletRequest request) {
		return "/Registration/registration";
	}
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView validateHomePhone(HttpServletRequest request) {
		Family family = new Family();
		
		ModelMap modelMap = new ModelMap();
		String message ="";
		String responeUrl ="";
		String failUrl ="/Registration/registration";
		String successUrl ="/Registration/selectAccount";
		
		try{
		String homePhone= request.getParameter("i1").trim()+
				  request.getParameter("i2").trim()+
				  request.getParameter("i3").trim();
		if(homePhone != null && homePhone.length() ==10){
			family = directoryServiceImpl.getFamilyHomePhoneNo(homePhone);
			if(family != null){
				List<Member> lMember = new ArrayList<Member>();
				lMember = directoryServiceImpl.MemFamilyNoInteractive(family.getFamilyId());
				modelMap.addAttribute("family", family);
				modelMap.addAttribute("members", lMember);
				responeUrl=successUrl;
			}else{
				logger.error("There are no Family Details for the entered phone number : Phone Number = " + homePhone);
				message = "There are no Family Details for the entered phone number. Please validate the data and try submitting again.";
				responeUrl = failUrl;
				modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
			}
		}else{
			message = "Invalid Phone Number !!";
			responeUrl = failUrl;
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
		}
		
		}catch(Exception e){
			logger.error(e.toString());
			message = "Error Retrieving Family Details !!";
			responeUrl = failUrl;
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
		}
		
		return new ModelAndView(responeUrl, modelMap);
	}
	
	@RequestMapping(value = "/createAccount", method = RequestMethod.POST)
	public ModelAndView createAccount(HttpServletRequest request) {
		
		ModelMap modelMap = new ModelMap();
		String message ="";
		String responeUrl ="";
		String failUrl ="/Registration/registration";
		String successUrl ="/Registration/selectAccount";
		
		if(HTTPUtils.validateParameter(request, "memberId")&&
		   HTTPUtils.validateParameter(request, "emailAddress")&&
		   HTTPUtils.validateParameter(request, "password")){
			
			logger.info("Creating Login Account for member id: " +request.getParameter("memberId") );
			authenticationService.createMemberAccount(Long.parseLong(request.getParameter("memberId").trim()), 
					request.getParameter("emailAddress").trim(), request.getParameter("password").trim());
			
			long memberId = Long.parseLong(request.getParameter("memberId"));
			Member m= directoryServiceImpl.getMember(memberId);
			List<Member> lMember = new ArrayList<Member>();
			lMember = directoryServiceImpl.MemFamilyNoInteractive(m.getFamilyId());
			Family family = directoryServiceImpl.getFamily(m.getFamilyId());
			modelMap.addAttribute("family", family);
			modelMap.addAttribute("members", lMember);
			responeUrl=successUrl;
			
			
		}else{
			logger.error("Bad Incoming Request !!!");
			message = "Bad Incoming Request !!!";
			responeUrl = failUrl;
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
		}
		
		return new ModelAndView(responeUrl, modelMap);
		
	}
	
}
