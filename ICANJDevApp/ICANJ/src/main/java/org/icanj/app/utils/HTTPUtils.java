/**
 * **********************************************************************
 *
 * Copyright 2012 - ICANJ
 *
 ***********************************************************************
 */
package org.icanj.app.utils;

import javax.servlet.http.HttpServletRequest;

import org.icanj.app.usersignup.SignupController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HTTPUtils {

	private static final Logger logger = LoggerFactory.getLogger(HTTPUtils.class);

	public static boolean validateParameter(HttpServletRequest request,
		String requestParam, Integer requestDataType) {

		try {
			Boolean returnValue = false;
			String value = request.getParameter(requestParam);

			switch (requestDataType) {
				case 1:
					break;
				case 2:
					returnValue = (value != null && !"".equals(value)) ? true : false;
				default:
					break;
			}
			if (value != null && !"".equals(value)) {
				return returnValue;
			} else {
				logger.error(requestParam + " is an Illegal Argument.");
				return returnValue;
			}

		} catch (Exception e) {
			logger.error(requestParam + " is an Illegal Argument.");
			return false;
		}
	}
}
