package com.bridgeLabz.services;

import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.bridgeLabz.model.Login;
import com.bridgeLabz.model.Registration;

public interface IServices {
	public boolean addUser(Registration registration);
	public boolean addAdmin(Registration registration);
	public boolean authentication(Login login); 
	public boolean deleteUserDetails(String email);
	public boolean updateUserDetails(Registration update) throws ClassNotFoundException, SQLException;
	public JSONObject getOneUserDetails(String email);
	public JSONArray lastRegistered();
}