package org.icanj.app.usersignup;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Signup")
public class SignupController {

	@RequestMapping(value= "/Family", method =RequestMethod.GET)
	public String landing(HttpServletRequest request){		
		return "/Signup/FamilySignup";
	}
	
	@RequestMapping(value= "/AddFamily.html", method =RequestMethod.GET)
	public ModelAndView saveFamily(HttpServletRequest request){
		
		System.out.println(request.getParameter("country"));
		String successMessage = "The Family Details were added successfully !!!";
        return new ModelAndView("/Signup/FamilySignup", "message", successMessage);
	}
}
