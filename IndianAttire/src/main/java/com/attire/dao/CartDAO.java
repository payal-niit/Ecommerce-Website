package com.attire.dao;

import java.util.List;

import com.attire.model.Cart;
import com.attire.model.Category;

public interface CartDAO {
	
	public void addToCart(Cart cart);

	public String listCart();
	
	public List<Cart> list();	
	
	public Cart getById(int cartId);
	
	

}
