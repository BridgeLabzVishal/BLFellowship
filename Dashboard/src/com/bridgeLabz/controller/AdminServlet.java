package com.bridgeLabz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import com.bridgeLabz.model.Login;


//@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static PrintWriter printWriter;
	Login login = new Login();
   
    public AdminServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		printWriter = response.getWriter();
		
		HttpSession session = request.getSession();
		session.removeAttribute("Email");
		session.removeAttribute("Password");
		session.invalidate();
		
		printWriter.print("You are successfully logged out!");
		
		try {
			 response.sendRedirect("login.jsp");
		}  catch (IOException e) {
			
			e.printStackTrace();
		}	
		printWriter.close();
	}


}
