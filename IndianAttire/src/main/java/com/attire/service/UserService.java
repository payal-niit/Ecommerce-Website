package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.UserDAOImpl;
import com.attire.model.BillingAddress;
import com.attire.model.ShippingAddress;
import com.attire.model.User;
import com.attire.model.UserDetail;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserDAOImpl userDAO;
	
	public void saveOrUpdate(UserDetail userDetail) {
		userDAO.saveOrUpdate(userDetail);
	}
	
	public void saveOrUpdateUser(User user) {
		userDAO.saveOrUpdateUser(user);
	}
	
	public void saveOrUpdate2(UserDetail userDetail) {
		userDAO.saveOrUpdate2(userDetail);
	}
	public User getById(int userId) {
		return userDAO.getById(userId);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress) {
		userDAO.saveBillingAddress(billingAddress);
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress) {
		userDAO.saveShippingAddress(shippingAddress);
	}
	
	public List<UserDetail> list() {
		return userDAO.list();
	}
	
	public UserDetail getByName(String username) {
		return userDAO.getByName(username);
	}
	
	public int getUserId(String username) {
		return userDAO.getByName(username).getUserId();
	}
	
	public ShippingAddress getShippingAddressById(int UserDetail_userId) {
		return userDAO.getShippingAddressById(UserDetail_userId);
	}
	
	public BillingAddress getBillingAddressById(int UserDetail_userId) {
		return userDAO.getBillingAddressById(UserDetail_userId);
	}
}
