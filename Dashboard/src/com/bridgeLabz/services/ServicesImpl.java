package com.bridgeLabz.services;

import java.sql.SQLException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import com.bridgeLabz.model.Login;
import com.bridgeLabz.model.Registration;
import com.bridgeLabz.repository.UserDetailsRepository;

public class ServicesImpl implements IServices {
	JSONObject jsonObject = new JSONObject();
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean addUser(Registration registration) {
		jsonObject.put("firstname",registration.getFirstName());
		jsonObject.put("lastname",registration.getLastName());
		jsonObject.put("email",registration.getEmail());
		jsonObject.put("password",registration.getPasswd());
		jsonObject.put("gender",registration.getGender());
		jsonObject.put("dob",registration.getDateOfBirth());
		jsonObject.put("age",registration.getAge());
		jsonObject.put("city",registration.getCity());
		jsonObject.put("state",registration.getState());
		jsonObject.put("zip",registration.getZip());
		
		return UserDetailsRepository.addUser(jsonObject);	
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean authentication(Login login) 
	{
		jsonObject.put("email", login.getEmail());
		jsonObject.put("password", login.getPassword());
		jsonObject.put("userType", login.getUserType());
		if(jsonObject.get("userType").equals("user"))
			return UserDetailsRepository.authenticateUser(jsonObject);
		else if(jsonObject.get("userType").equals("admin"))
			return UserDetailsRepository.authenticateAdmin(jsonObject);
		else
			return false;	
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean updateUserDetails(Registration update) throws ClassNotFoundException, SQLException {
		jsonObject.put("firstname",update.getFirstName());
		jsonObject.put("lastname",update.getLastName());
		jsonObject.put("email", update.getEmail());
		jsonObject.put("password",update.getPasswd());
		jsonObject.put("gender",update.getGender());
		jsonObject.put("dob",update.getDateOfBirth());
		jsonObject.put("age",update.getAge());
		jsonObject.put("city",update.getCity());
		jsonObject.put("state",update.getState());
		jsonObject.put("zip",update.getZip());
		
		return UserDetailsRepository.update(jsonObject);
	}

	@Override
	public JSONObject getOneUserDetails(String email) {
		return UserDetailsRepository.getOneUserDetails(email);
	}

	@Override
	public boolean deleteUserDetails(String email) {
		return UserDetailsRepository.deleteUser(email);
	}

	@Override
	public JSONArray lastRegistered() {
		return UserDetailsRepository.lastRegistered();
	}

}
