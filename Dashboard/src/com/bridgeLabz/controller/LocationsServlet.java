package com.bridgeLabz.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;

import com.bridgeLabz.repository.UserDetailsRepository;

@WebServlet("/LocationsServlet")
public class LocationsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	JSONArray array = new JSONArray();
	private static RequestDispatcher requestDispatcher;
    
    public LocationsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		try 
		{
			array = UserDetailsRepository.topLocations();
			request.setAttribute("jsonArray", array);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		requestDispatcher = request.getRequestDispatcher("locations.jsp");
		requestDispatcher.forward(request, response);
		
	}


}
