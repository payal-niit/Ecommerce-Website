package com.attire.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.NewUserDAOImpl;
import com.attire.model.NewUser;



@Service
@Transactional
public class NewUserService {
	
	@Autowired
	private NewUserDAOImpl userDAO;
	
	public void createUser(NewUser newUser) {
		userDAO.createUser(newUser);
	}
	
	public String listPersons() {
		return userDAO.listPersons();
	}

}
