package com.bridgeLabz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import com.bridgeLabz.model.Login;
import com.bridgeLabz.repository.UserDetailsRepository;
import com.bridgeLabz.services.IServices;
import com.bridgeLabz.services.ServicesImpl;

//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static PrintWriter printWriter;
	private static RequestDispatcher requestDispatcher;
	JSONArray array = new JSONArray();
	IServices services = new ServicesImpl();
	Login login = new Login();
       
    public LoginServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		login.setEmail(email);
		
		String password = request.getParameter("password");
		login.setPassword(password);
		
		String userType = request.getParameter("radio");
		login.setUserType(userType);
		
		response.setContentType("text/html");
		printWriter = response.getWriter();
		
		if(userType.equalsIgnoreCase("user"))
		{
			if(services.authentication(login))
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
				
				response.sendRedirect("home.jsp");
			}
			else
			{
				printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
				printWriter.print("<script type='text/javascript'>");
				printWriter.print("$(document).ready(function(){");
				printWriter.print("alert('Sorry Wrong Credentials!!!');");
				printWriter.print("});");
				printWriter.print("</script>");
				requestDispatcher = request.getRequestDispatcher("login.jsp");
				requestDispatcher.include(request, response);	
			}
		}
		else if(userType.equalsIgnoreCase("admin"))
		{
			if(services.authentication(login))
			{
				try {
					array = UserDetailsRepository.getAllDetails();
					request.setAttribute("jsonArray", array);
					
				
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				HttpSession session = request.getSession();
				session.setAttribute("Email", email);
				session.setAttribute("Password", password);
				
				printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
				printWriter.print("<script type='text/javascript'>");
				printWriter.print("$(document).ready(function(){");
				printWriter.print("alert('Successfully login!!!');");
				printWriter.print("});");
				printWriter.print("</script>");
				
				//response.sendRedirect("admin.jsp");
				requestDispatcher = request.getRequestDispatcher("admin.jsp");
				requestDispatcher.forward(request, response);
			}
			else
			{
				printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
				printWriter.print("<script type='text/javascript'>");
				printWriter.print("$(document).ready(function(){");
				printWriter.print("alert('Sorry Wrong Credentials!!!');");
				printWriter.print("});");
				printWriter.print("</script>");
				requestDispatcher = request.getRequestDispatcher("login.jsp");
				requestDispatcher.include(request, response);	
			}
		}
		else
		{
			printWriter.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>");
			printWriter.print("<script type='text/javascript'>");
			printWriter.print("$(document).ready(function(){");
			printWriter.print("alert('Sorry Wrong Credentials!!!');");
			printWriter.print("});");
			printWriter.print("</script>");
			requestDispatcher = request.getRequestDispatcher("login.jsp");
			requestDispatcher.include(request, response);	
		}
		printWriter.close();
	}
		
}
