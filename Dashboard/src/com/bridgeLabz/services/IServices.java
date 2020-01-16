package com.bridgeLabz.services;

import com.bridgeLabz.model.Login;
import com.bridgeLabz.model.Registration;

public interface IServices {
	public boolean addUser(Registration registration);
	public boolean authentication(Login login); 
	public boolean deleteUserDetails(String name);
	public boolean updateUserDetails(Registration registration);
}