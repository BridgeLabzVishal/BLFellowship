package com.bridgeLabz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import com.bridgeLabz.services.IServices;
import com.bridgeLabz.services.ServicesImpl;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static RequestDispatcher requestDispatcher;
	IServices services = new ServicesImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");

		JSONObject jsonObject = services.getOneUserDetails(email);

		if (jsonObject != null) {
			request.setAttribute("userdetails", jsonObject);

			HttpSession session = request.getSession();
			session.setAttribute("Email", email);

			requestDispatcher = request.getRequestDispatcher("update.jsp");
			requestDispatcher.include(request, response);
		}
	}

}
