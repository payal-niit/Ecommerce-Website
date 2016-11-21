package com.attire.config;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.attire.model.BuyNow;
import com.attire.model.CartItem;
import com.attire.model.ShippingAddress;
import com.attire.service.CartItemService;
import com.attire.service.ProductService;
import com.attire.service.UserService;

@Component
public class CartHandler {
	@Autowired
	private UserService userService;
	@Autowired
	private ShippingAddress shippingAddress;
	
	@Autowired
	private CartItem cartItem;
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartItemService cartItemService;
	HttpSession session;
	
	public BuyNow initFlow() {
		
		return new BuyNow();
	}
	
	/*public String addToCart(CartItem cartItem) {
		
		
		cartItemService.addToCartBuyNow(cartItem);
		
		return "success";
	}*/
	
	
	public String getShippingAddress(HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		System.out.println("username is: "+user);
		int userId=userService.getUserId(user);
		System.out.println("userId: "+userId);
		session.setAttribute("user", userId);
		
		return "process";
	}

}
