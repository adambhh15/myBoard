package com.company.service;

import com.company.DAO.UserDAO;

public class UserService {
	private static UserService service = new UserService();
	UserDAO dao = UserDAO.getInstance();
	
	private UserService() {};
	
	public static UserService getInstance() {
		return service;
	}
	
	public void UserLogin(String id, String pw) {
		dao.getInstance();
		
	}
}
