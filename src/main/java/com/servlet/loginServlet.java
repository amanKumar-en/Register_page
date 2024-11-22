package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			// retrieved successfully from input fields
		String email = request.getParameter("email");
		String password = request.getParameter("password");
			 // now write code in DAO class
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		User user = dao.getLogin(email, password); // obj goes to session(attribute)
		
		if(user != null) {
//			PrintWriter out = response.getWriter();
//			out.println("Login Successfull");
			
			HttpSession session = request.getSession();
			session.setAttribute("user-ob", user); // by the help of user obj, email & password we be fetch
			response.sendRedirect("home.jsp");
		} 
		else {
//			response.setContentType("text/html");
//			PrintWriter out = response.getWriter();
//			out.println("<h2>something wrong</h2>");
			
//			HttpSession session = request.getSession();
//			session.setAttribute("user-ob", user); 
//			response.sendRedirect("login.jsp");
			
			HttpSession session = request.getSession();
			session.setAttribute("user-error", user);
			response.sendRedirect("error.jsp");
			
					
		}
	}

}
