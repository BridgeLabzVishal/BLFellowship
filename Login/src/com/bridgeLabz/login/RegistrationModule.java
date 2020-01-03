package com.bridgeLabz.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/RegistrationModule")
public class RegistrationModule extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static RequestDispatcher requestDispatcher;
	private static PrintWriter printWriter;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("Email");
		String first_name = request.getParameter("First Name");
		String last_name = request.getParameter("Last Name");
		String password = request.getParameter("Password");
		String gender = request.getParameter("Radio");
		String country = request.getParameter("Country");

		response.setContentType("text/html");
		printWriter = response.getWriter();

		boolean flag = Connectivity.readUserDetails(email);

		if(flag == false) 
		{
			if(Connectivity.insert(email,first_name,last_name,password,gender,country))
			{
				printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
				printWriter.print("<script type='text/javascript'>");
				printWriter.print("$(document).ready(function(){");
				printWriter.print("alert('Successfully Registrated!!!');");
				printWriter.print("});");
				printWriter.print("</script>");

				requestDispatcher = request.getRequestDispatcher("Login.jsp");
				requestDispatcher.include(request, response);
			}
		}
		else
		{
			printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
			printWriter.print("<script type='text/javascript'>");
			printWriter.print("$(document).ready(function(){");
			printWriter.print("alert('Already Exists,Please Choose Anyother Email!!!');");
			printWriter.print("});");
			printWriter.print("</script>");
			requestDispatcher = request.getRequestDispatcher("Registration.jsp");
			requestDispatcher.include(request, response);
		}
		
		 printWriter.close();
	}

}

