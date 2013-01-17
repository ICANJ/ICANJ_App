package org.icanj.app.organizer.pypa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Public/Sponsors")
public class PYPASponsorsController {
	
	
	@Autowired
	private SponsorsDao dao;
	
	@RequestMapping(value = "/Pypa", method = RequestMethod.GET)
	public String getMembers(ModelMap model){
		/*
		for(int i=1; i<=12;i++){
			PYPAEntity entity = new PYPAEntity();
			entity.setMonth(i);
			entity.setFullName("User"+i +"2");
			entity.setMeetingType("English MTG 1");
			entity.setSelected(false);
			entity.setYear("2013");
			
			dao.saveOrUpdateEntity(entity);
						
		}*/
		
		model.addAttribute("items", dao.getAllItems("2013"));
		return "Sponsors/pypahome";
	}

}
