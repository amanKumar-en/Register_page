package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;


@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// retrieving the data from input field (from user)
	String name = request.getParameter("username");
	String email = request.getParameter("email");
	String password = request.getParameter("password"); // make userDAO class for the saving the data into DB
	
		// we get the field input from user, now we have to store the user class obj. In com.entities(user) we have to create the object first
	// creating the object (import from com.entities)
	User us = new User();
	us.setName(name);
	us.setEmail(email);
	us.setPassword(password);
	
	// now we have to store the data into DB, which is written in USerDAO file
		// so we have to import and create the connection first & also create the object
	UserDAO dao = new UserDAO(DBConnect.getConnection());
	boolean f = dao.userRegister(us);
	
	if(true) {
		HttpSession session = request.getSession();
		session.setAttribute("reg-msg", "Registration Successful...");
		response.sendRedirect("register.jsp");
	} 
	else {
		HttpSession session = request.getSession();
		session.setAttribute("error-msg", "Something Wrong...");
		response.sendRedirect("register.jsp");
	}
	
	}

	

}
