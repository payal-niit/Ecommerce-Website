package com.attire.dao;

import com.attire.model.NewUser;

public interface NewUserDAO {
		
	public void createUser(NewUser newUser);

	public String listPersons();

}
