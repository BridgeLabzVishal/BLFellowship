package com.bridgeLabz.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static PrintWriter printWriter;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		response.setContentType("text/html");
		printWriter = response.getWriter();
		
		HttpSession session = request.getSession();
		session.removeAttribute("Email");
		session.invalidate();
		printWriter.print("You are successfully logged out!");
		try {
			 response.sendRedirect("Login.jsp");
		}  catch (IOException e) {
			
			e.printStackTrace();
		}		
	}

}
