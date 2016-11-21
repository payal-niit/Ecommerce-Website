package com.attire.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.WishListDAOImpl;
import com.attire.model.WishList;

@Service
@Transactional
public class WishListService {
	
	@Autowired
	private WishListDAOImpl wishListDAO;
	
	public void addToWishList(WishList wishList) {
		wishListDAO.addToWishList(wishList);
	}
	
	public String getByWishListIdGSON(int userId) {
		return wishListDAO.getByWishListIdGSON(userId);
	}

}
