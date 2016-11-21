package com.attire.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.CartDAOImpl;
import com.attire.model.Cart;

@Service
@Transactional
public class CartService {
	
	@Autowired
	private CartDAOImpl cartDAO;
	
	public Cart getById(int cartId) {
		return cartDAO.getById(cartId);
	}

}
