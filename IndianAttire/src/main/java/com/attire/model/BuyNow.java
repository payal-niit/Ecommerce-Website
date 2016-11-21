package com.attire.model;

import java.io.Serializable;

public class BuyNow implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private CartItem cartItem;
	
	private UserDetail userDetail;
	
	private ShippingAddress shippingAddress;
	
	private BillingAddress billingAddress;

	public CartItem getCartItem() {
		return cartItem;
	}

	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	
	

}
