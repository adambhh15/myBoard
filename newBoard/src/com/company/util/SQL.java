package com.company.util;

public class SQL {
	public static final String DB_URL = "oracle.jdbc.driver.OracleDriver";
	public static final String DB_DRIVER = "jdbc:oracle:thin:@localhost:1521:xe";
	public static final String DB_USER = "system";
	public static final String DB_PW = "1234";
	public static final String LOGIN = "select id,pw from users where id=? and pw=?";
	
}
