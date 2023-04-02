package com.company.controller;

import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String charset=null;
	HashMap<String, Controller> list = null; 
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/userLogin", new UserLogin());
	}
}
