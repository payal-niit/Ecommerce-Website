package com.attire.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.CartItemDAOImpl;
import com.attire.model.CartItem;

@Service
@Transactional
public class CartItemService {
	@Autowired
	private CartItemDAOImpl cartItemDAO;
	
	public String getByCartIdGSON(int cartId) {
		return cartItemDAO.getByCartIdGSON(cartId);
	}
	
	public void addToCartBuyNow(CartItem cartItem) {
		cartItemDAO.addToCartBuyNow(cartItem);
	}
	public String getByCartItemIdGSON(int cartItemId) {
		return cartItemDAO.getByCartItemIdGSON(cartItemId);
	}
	public CartItem getBycartItemId(int cartItemId) {
		return cartItemDAO.getBycartItemId(cartItemId);
	}
	public void updateCart(int cartItemId) {
		cartItemDAO.updateCart(cartItemId);
	}
	
	public void delete(int cartItemId) {
		cartItemDAO.delete(cartItemId);
	}
	

}
