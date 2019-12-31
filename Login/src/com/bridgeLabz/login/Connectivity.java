package com.bridgeLabz.login;

import java.lang.Class;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Connectivity 
{
	private static Connection con;
	private static ResultSet resultSet;
	private static PreparedStatement statement;
	static{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Vishal_Yadav", "RedDevilVishal","RAJvishal12@");
		} 
		catch (Exception e) 
		{
			System.out.println("Connection not established");
		}    
	}
	
	public static boolean authentication(String email,String password)
	{
		 String query = "select * from users";
		 try {
			statement = con.prepareStatement(query);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				if(resultSet.getString("Email").equals(email) && resultSet.getString("Password").equals(password))
				{
					return true;
				}
			}	
		} catch (SQLException e) {
			System.out.println("Authentication error");
		}
		return false;
	}
	
	public static boolean insert(String email, String first_name, String last_name, String password, String gender, String country)
	{
		String query = "insert into users(Email, First_Name, Last_Name, Password, Gender, Country) values(?,?,?,?,?,?)";
		try {
			statement = con.prepareStatement(query);
			statement.setString(1,email);
			statement.setString(2, first_name);
			statement.setString(3, last_name);
			statement.setString(4, password);
			statement.setString(5, gender);
			statement.setString(6, country);
			
			int num = statement.executeUpdate();
			if(num  >  0)
			{
				return true;
			}
		} catch (SQLException e) {
			System.out.println("Registration error");
		}
		return false;
	}
	
	public static boolean readUserDetails(String email)
	{
		String query = "select * from users";
		try {
			statement = con.prepareStatement(query);
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				if(resultSet.getString("Email").equals(email))
				{
					return true;
				}
			}
		} catch (Exception e) {
			System.out.println("Reading user details error");
		}
		return false;
	}

}