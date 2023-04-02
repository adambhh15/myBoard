package com.company.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLogin implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("/UserLogin ½ÇÇà");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
	}

}
