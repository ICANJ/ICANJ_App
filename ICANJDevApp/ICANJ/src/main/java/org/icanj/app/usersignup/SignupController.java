package org.icanj.app.usersignup;

import javax.servlet.http.HttpServletRequest;


import org.icanj.app.directory.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> Initial code push.
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Signup")
public class SignupController {

	@Autowired
	private DirectoryService directoryServiceImpl;

	@RequestMapping(value = "/Family", method = RequestMethod.GET)
	public String landing(HttpServletRequest request) {
		return "/Signup/FamilySignup";
	}

	@RequestMapping(value = "/AddFamily.html", method = RequestMethod.GET)
	public ModelAndView saveFamily(HttpServletRequest request) {
		
		String message ="";
		try {
			directoryServiceImpl.addFamily(request);
			message = "The Family Details were added successfully !!!";
		} catch (Exception e) {
			System.out.println(e);
			message = "There was an Error !!!";
		}

		return new ModelAndView("/Signup/FamilySignup", "message",message);
	}
}
