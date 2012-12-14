package org.icanj.app.utils;

public class JSPAlert {
	
	private int code;
	private String message;
	
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
	
	public JSPAlert(int code,String message){
		this.code=code;
		this.message=message;
	}
}
