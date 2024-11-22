package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logoutServlet
 */
@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("user-ob"); // this obj will destroy
		
			// when we click logout then it will destroy the session & redirect to the blank page
		// again we enter in url home.jsp then it gives NULL 
		
		// no one goes direct to the login page , it will redirect to the login page to enter credentials
			
		// to write this logic we have write SCRPTLET TAG in home.jsp file, outside of the <HTML> tag
	
		
		// new session for the alert in logout page
			// after logout, blank page is coming, so we show alert message i.e. logout successfully
		// in login.jsp line.65
		HttpSession session2 = request.getSession();
		session.setAttribute("logout-msg", "Logout Successfully...");
		response.sendRedirect("login.jsp");
	
	}

	

}
