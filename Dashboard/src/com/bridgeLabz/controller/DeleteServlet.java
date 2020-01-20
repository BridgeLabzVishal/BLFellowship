package com.bridgeLabz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bridgeLabz.services.IServices;
import com.bridgeLabz.services.ServicesImpl;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static RequestDispatcher requestDispatcher;
	IServices services = new ServicesImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");

		boolean flag = services.deleteUserDetails(email);
		
		if (flag == true) {
			requestDispatcher = request.getRequestDispatcher("admin.jsp");
			requestDispatcher.include(request, response);
		} else {
			
			response.sendRedirect("admin.jsp");
		}
	}

}
