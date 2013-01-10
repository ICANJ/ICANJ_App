package org.icanj.app.utils;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.usersignup.SignupController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HTTPUtils {
	
	private static final Logger logger = LoggerFactory.getLogger(HTTPUtils.class);
	
	public static boolean validateParameter(HttpServletRequest request,
			String requestParam) {

		try {
			String value = request.getParameter(requestParam).trim();
			if (value != null && !"".equals(value)) {
				return true;
			} else{
				logger.error(requestParam +" is an Illegal Argument.");
				return false;
			}
		
		} catch (Exception e) {
			logger.error(requestParam +" is an Illegal Argument.");
			return false;
		}
	}
	
}
