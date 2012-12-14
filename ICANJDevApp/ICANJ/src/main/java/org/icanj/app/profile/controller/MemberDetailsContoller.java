package org.icanj.app.profile.controller;

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
@RequestMapping("/Profile")
public class MemberDetailsContoller {
        
    @RequestMapping(value= "/MemberDetails", method =RequestMethod.GET)
	public String addMember(HttpServletRequest request){
        return "/Profile/memberDetails";
    }
}