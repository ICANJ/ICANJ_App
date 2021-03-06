/************************************************************************
 * 
 * Copyright 2012 - ICANJ
 * 
 ************************************************************************/

package org.icanj.app;

import java.security.Principal;
import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.security.SecurityContextAccessor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	SecurityContextAccessor securityContextAccessor;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model, Principal principal) {

		String name = principal.getName(); // get logged in username
		model.addAttribute("username", name);
		return "home";
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home2(ModelMap model, Principal principal) {

		String name = principal.getName(); // get logged in username
		model.addAttribute("username", name);
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model, Principal principal) {

		if (securityContextAccessor.isCurrentAuthenticationAnonymous()) {
			return "/Login/login";
		} else {
			return "home";
		}

	}

	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login2(ModelMap model, Principal principal) {
		if (securityContextAccessor.isCurrentAuthenticationAnonymous()) {
			return "/Login/login";
		} else {
			return "home";
		}

	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {

		model.addAttribute("error", "true");
		return "/Login/login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {

		return "home";

	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(ModelMap model) {

		return "/Core/header";

	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String accessDenied(ModelMap model) {
		return "Core/403";

	}

	@RequestMapping(value = "/errors/404.html")
	public String handle404() {
		return "Core/404";
	}

	@RequestMapping(value = "/errors/500.html")
	public String handle500() {
		return "Core/500";
	}

	@RequestMapping(value = "/favicon.ico")
	public void favicon() {
		// do Nothing
	}

	@RequestMapping(value = "/Admin/Header")
	public void requestHeaders(HttpServletRequest request) {
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String headerName = (String) headerNames.nextElement();
			System.out.println(headerName + " : ");
			System.out.print(request.getHeader(headerName));
		}
	}
};
