package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	private static Connection connection;
	public static Connection getConnection() {
		
		try {
			if(connection == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/loginpage","root","232321");
			}
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return connection;
	}
	
}
