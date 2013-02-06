package org.icanj.app.tithing;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.directory.entity.Family;
import org.icanj.app.utils.AppConstant;
import org.icanj.app.utils.JSPAlert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Admin/Tithe")
public class TithingController {
	
	private static final Logger logger = LoggerFactory.getLogger(TithingController.class);
	
	@Autowired
	private TithingService tithingService;
	
		
	@RequestMapping(value = "/AddTithe", method = RequestMethod.POST)
	public ModelAndView addorUpdateTithe(HttpServletRequest request,Principal principal) {
		String responseUrl="Tithe/adminLanding";
		ModelMap modelMap = new ModelMap();		
		String message="";
		try {
			String name = principal.getName();
			tithingService.addTithingTransaction(request, name);
			
			List<Tithe> tithes = tithingService.getlatestTransactions();
			message= "The transaction was added successfully !!!!";
			modelMap.addAttribute("tithes",tithes);
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_SUCCESS_CODE,AppConstant.CSS_ALERT_ERROR, message));
			return new ModelAndView(responseUrl, modelMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			message= "There was an error saving the transaction. Please contact the IT team.";
			modelMap.addAttribute("alert", new JSPAlert(AppConstant.MSG_ERROR_CODE,AppConstant.CSS_ALERT_ERROR, message));
			return new ModelAndView(responseUrl, modelMap);
		}
		
		

	}
	
	@RequestMapping(value = "/Admin", method = RequestMethod.GET)
	public ModelAndView adminLanding(ModelMap model) {
		String responseUrl="Tithe/adminLanding";
		List<Tithe> tithes = tithingService.getlatestTransactions();
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("tithes",tithes);
		return new ModelAndView(responseUrl, modelMap);
		
	}
	
	
	@RequestMapping(value = "/Edit/{transactionId}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable("transactionId") long transactionId) {
		String responseUrl="Tithe/TitheEdit";
		Tithe tithe = tithingService.getTitheByTransactId(transactionId);
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("tithe",tithe);
		return new ModelAndView(responseUrl, modelMap);
		
	}
	
	@RequestMapping(value = "/Delete/{transactionId}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("transactionId") long transactionId) {
		String responseUrl="Tithe/adminLanding";
		tithingService.deleteTransaction(transactionId);
		
		List<Tithe> tithes = tithingService.getlatestTransactions();
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("tithes",tithes);
		return new ModelAndView(responseUrl, modelMap);
		
	}
	
}
