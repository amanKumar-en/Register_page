package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.User;

public class UserDAO {

	private Connection connection;
	
	public UserDAO(Connection connection) {
		super();
		this.connection = connection;
	}
	 
	
	public boolean userRegister(User us) { // we create User class obj.
		
		boolean f = false; // initially its false
		
			// for exception handling we use try-catch block
		try {
			String insert = "insert into user(name,email,password) values(?,?,?)";
			PreparedStatement ps = connection.prepareStatement(insert);
			
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			
			ps.executeUpdate(); // if data is stored successfully then shows true
			f = true;
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return f;
	}
	
	
		// for login, to check correct credentials
	public User getLogin(String em, String ps) {
		
		User us = null;
		
		try {
			
			String login = "select * from user where email=? and password=?";
			
			PreparedStatement ps1  = connection.prepareStatement(login);
			ps1.setString(1, em);
			ps1.setString(2, ps);
			
			ResultSet rs = ps1.executeQuery();
			
			if(rs.next()) {
					// creates obj & set the data
				us = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
			}
			
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return us;
	}
	
	
}
