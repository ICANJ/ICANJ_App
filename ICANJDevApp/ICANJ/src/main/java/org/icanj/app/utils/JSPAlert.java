package org.icanj.app.utils;

public class JSPAlert {
	
	private int code;
	private String message;
	private String cssAlertClass;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public JSPAlert(int code,String cssAlertMsg,String message){
		this.code=code;
		this.cssAlertClass = cssAlertMsg;
		this.message=message;
	}
	
	public JSPAlert(String cssAlertMsg,String message){
		this.cssAlertClass = cssAlertMsg;
		this.message=message;
	}
	public String getCssAlertClass() {
		return cssAlertClass;
	}
	public void setCssAlertClass(String cssAlertClass) {
		this.cssAlertClass = cssAlertClass;
	}
}
