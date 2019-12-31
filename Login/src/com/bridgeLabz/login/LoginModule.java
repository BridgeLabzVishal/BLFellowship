package com.bridgeLabz.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//@WebServlet("/LoginModule")
public class LoginModule extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static RequestDispatcher requestDispatcher;	
	private static PrintWriter printWriter;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		printWriter = response.getWriter();
		
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		
		if(Connectivity.authentication(email, password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("Email", email);
			session.setAttribute("Password", password);
			
			printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
			printWriter.print("<script type='text/javascript'>");
			printWriter.print("$(document).ready(function(){");
			printWriter.print("alert('Successfully login!!!');");
			printWriter.print("});");
			printWriter.print("</script>");
			
			//response.sendRedirect("Home.jsp");
			requestDispatcher = request.getRequestDispatcher("Home.jsp");
			requestDispatcher.include(request, response);
		}
		else
		{
			printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
			printWriter.print("<script type='text/javascript'>");
			printWriter.print("$(document).ready(function(){");
			printWriter.print("alert('Sorry Wrong Credentials!!!');");
			printWriter.print("});");
			printWriter.print("</script>");
			requestDispatcher = request.getRequestDispatcher("Login.jsp");
			requestDispatcher.include(request, response);	
		}
	}

}
