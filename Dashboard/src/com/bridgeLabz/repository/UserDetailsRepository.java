package com.bridgeLabz.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import com.bridgeLabz.utility.Utility;


public class UserDetailsRepository {
	private static ResultSet resultSet = null;
	
	public static boolean addUser(JSONObject jsonObject) 
	{
		String query = "insert into users(First_Name, Last_Name, Email, Password, Gender, DOB, Age, City, State, Zip) values(?,?,?,?,?,?,?,?,?,?)";
		
		try(Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query))
		{
			statement.setString(1,jsonObject.get("firstname").toString());
			statement.setString(2,jsonObject.get("lastname").toString());
			statement.setString(3,jsonObject.get("email").toString());
			statement.setString(4,jsonObject.get("password").toString());
			statement.setString(5,jsonObject.get("gender").toString());
			statement.setString(6,jsonObject.get("dob").toString());
			statement.setString(7,jsonObject.get("age").toString());
			statement.setString(8,jsonObject.get("city").toString());
			statement.setString(9,jsonObject.get("state").toString());
			statement.setString(10,jsonObject.get("zip").toString());
			
			
			int result = statement.executeUpdate();
			if(result > 0)
				return true;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			System.out.println("Registration error");
		}
		return false;	
	}
	
	public static boolean authenticateUser(JSONObject jsonObject)
	{
		String email = (String) jsonObject.get("email");
		String password = (String) jsonObject.get("password");
	
		String query = "select * from users";
		 
		try (Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query);)
		{
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				if(resultSet.getString("Email").equals(email) && resultSet.getString("Password").equals(password))
					return true;
			}  
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			System.out.println("Authentication error");
		}
		return false;
	}
	
	public static boolean authenticateAdmin(JSONObject jsonObject)
	{
		String email = (String) jsonObject.get("email");
		String password = (String) jsonObject.get("password");
	
		String query = "select * from admin";
		 
		try (Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query);)
		{
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				if(resultSet.getString("Email").equals(email) && resultSet.getString("Password").equals(password))
					return true;
			}  
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			System.out.println("Authentication error");
		}
		return false;
	}
	
	public static boolean getUserDetails(String email)
	{
		String query = "select * from users";
		try (Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query);)
		{
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				if(resultSet.getString("Email").equals(email))
					return true;
			}
		} catch (Exception e) {
			System.out.println("Reading user details error");
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public static JSONArray getAllDetails() throws ClassNotFoundException, SQLException
	{
		JSONArray jsonArray = new JSONArray();
		
		String query = "select * from users";
		
		try (Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query);)
		{
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("firstname",resultSet.getString("First_Name"));
				jsonObject.put("lastname",resultSet.getString("Last_Name"));
				jsonObject.put("email",resultSet.getString("Email"));
				jsonObject.put("gender",resultSet.getString("Gender"));
				jsonObject.put("dob",resultSet.getString("DOB"));
				jsonObject.put("age",resultSet.getString("Age"));
				jsonObject.put("city",resultSet.getString("City"));
				jsonObject.put("state",resultSet.getString("State"));
				jsonObject.put("zip",resultSet.getString("Zip"));
				jsonArray.add(jsonObject);
			}
		} 
		return jsonArray;
	}
	
	@SuppressWarnings("unchecked")
	public static JSONArray topLocations() throws ClassNotFoundException, SQLException
	{
		JSONArray jsonArray = new JSONArray();
		
		String query = "select distinct city,state from users";
		
		try (Connection con = Utility.dbConnection(); PreparedStatement statement = con.prepareStatement(query);)
		{
			resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("city",resultSet.getString("City"));
				jsonObject.put("state",resultSet.getString("State"));
				jsonArray.add(jsonObject);
			}
		} 
		return jsonArray;
	}
	
	
	public static PreparedStatement genderWise() throws ClassNotFoundException, SQLException
	{
//		JSONArray jsonArray = new JSONArray();
		PreparedStatement statement=null;
		
		String query = "select * from users";
		
		try (Connection con = Utility.dbConnection();)
		{
			statement = con.prepareStatement(query);
//			resultSet = statement.executeQuery();
//			while(resultSet.next())
//			{
//				JSONObject jsonObject = new JSONObject();
//				jsonObject.put("city",resultSet.getString("City"));
//				jsonObject.put("state",resultSet.getString("State"));
//				jsonArray.add(jsonObject);
//			}
		} 
		return statement;
	}
	
	
	public static boolean deleteUser(String name) {
		// TODO Auto-generated method stub
		return false;
	}

	public static boolean update(JSONObject jsonObject) {
		// TODO Auto-generated method stub
		return false;
	}

}
