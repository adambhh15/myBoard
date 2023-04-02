package com.company.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.company.util.SQL;

public class UserDAO {
	private static UserDAO dao = new UserDAO();
	
	private UserDAO() {};
	
	public static UserDAO getInstance() {
		return dao;
	}
	
	public Connection connect() {
		Connection conn = null;
		
		try {
			Class.forName(SQL.DB_URL);
			conn = DriverManager.getConnection(SQL.DB_DRIVER, SQL.DB_USER, SQL.DB_PW);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void close(PreparedStatement pstmt, Connection conn) {
		try {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void UserLogin(String id, String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		conn = connect();
		try {
			pstmt = conn.prepareStatement(SQL.LOGIN);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
