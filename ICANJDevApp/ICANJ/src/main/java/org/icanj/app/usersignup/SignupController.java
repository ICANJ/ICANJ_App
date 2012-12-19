package org.icanj.app.usersignup;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.HomeController;
import org.icanj.app.directory.entity.Family;
import org.icanj.app.directory.service.DirectoryService;
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
@RequestMapping("/Signup")
public class SignupController {

	private static final Logger logger = LoggerFactory
			.getLogger(SignupController.class);

	@Autowired
	private DirectoryService directoryServiceImpl;

	@RequestMapping(value = "/Family", method = RequestMethod.GET)
	public String landing(HttpServletRequest request) {
		return "/Signup/familySignup";
	}

	@RequestMapping(value = "/AddFamily.html", method = RequestMethod.POST)
	public ModelAndView saveFamily(HttpServletRequest request) {

		logger.info("Family Onboarding - ");

		String message = "";
		String failUrl = "/Signup/familySignup";
		String sucessUrl = "/Signup/memberSignup";
		String responeUrl = "";
		Family family = null;
		ModelMap modelMap = new ModelMap();

				try {

					family = directoryServiceImpl.getFamilyHomePhoneNo(request.getParameter("homePhoneNumber"));
					
					if(family == null){
						
						if(directoryServiceImpl.addFamily(request)){						
							family = directoryServiceImpl.getFamilyHomePhoneNo(request.getParameter("homePhoneNumber"));
							responeUrl = sucessUrl;
							modelMap.addAttribute("family", family);
							modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_SUCCESS_CODE,AppConstant.CSS_ALERT_SUCESS, "Family was succesfully added to the directory"));
						}
						else{
							
							message = "There was an error saving the below family details. Please validate the data and try submitting again.";
							responeUrl = failUrl;
							modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));	
						}
					}
					else{	
							modelMap.addAttribute("family", family);
							message = "A family with this phone number already exists. Family Id: " + family.getFamilyId() + " Family Name : " + family.getFamilyName() + " & Family";
							responeUrl = sucessUrl;
							modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));	
					}
					
					return new ModelAndView(responeUrl, modelMap);
				} catch (Exception e) {
					logger.error("Exception : " + e);
					message = "There was an error saving the below family details. Please validate the data and try submitting again.";
					responeUrl = failUrl;
					modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
					return new ModelAndView(responeUrl, modelMap);
				}
	}
	
	@RequestMapping(value = "/AddMember.html", method = RequestMethod.POST)
	public ModelAndView saveMember(HttpServletRequest request) {
		ModelMap modelMap = new ModelMap();
		String message ="";
		
		String pageUrl = "/Signup/memberSignup";
		String successUrl = "/Signup/familySignup";
		
		if(HTTPUtils.validateParameter(request, "familyId")){
			directoryServiceImpl.addMembers(request);
			message="The member information was added sucessfully!! ";
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
			return new ModelAndView(successUrl, modelMap);
		}else{
			logger.error("Error Adding Members - Family Id cannot be null");
			message = "There was an error saving the below family details. Please validate the data and try submitting again.";
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
			return new ModelAndView(pageUrl, modelMap);
		}
				
	}
}
