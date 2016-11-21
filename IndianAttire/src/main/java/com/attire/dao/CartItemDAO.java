package com.attire.dao;

import java.util.List;


import com.attire.model.CartItem;

public interface CartItemDAO {
	
	public void addToCart(CartItem cartItem);

	public String listCart();
	
	public List<CartItem> list();	
	
	public String getByCartIdGSON(int cartId);
	
	public CartItem getBycartItemId(int cartItemId);
	
	public CartItem getByCartId(int cartId);
}
