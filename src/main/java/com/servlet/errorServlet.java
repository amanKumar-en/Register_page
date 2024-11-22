package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class errorServlet
 */
@WebServlet("/errorServlet")
public class errorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("user-error");
		
		
		HttpSession session3 = request.getSession();
		session.setAttribute("error-msg", "Login with correct Credentials!!");
		response.sendRedirect("login.jsp");
	}


}
