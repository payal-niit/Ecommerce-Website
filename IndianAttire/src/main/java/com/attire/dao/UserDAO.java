package com.attire.dao;

import com.attire.model.UserDetail;

public interface UserDAO {
	
	public void saveOrUpdate(UserDetail userDetail);
	public UserDetail getByName(String username);
	public UserDetail getById(String userId);
	

}
