package com.attire.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.attire.model.CartItem;
import com.attire.model.ProductView;
import com.attire.service.CartItemService;
import com.attire.service.ProductService;
import com.attire.service.UserService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CartController {
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/buynow-{productId}")
	public String buyNow(@ModelAttribute("cartItem")CartItem cartItem, @PathVariable("productId") String productId, @RequestParam("userId")int userId,HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		userId=userService.getUserId(user);
		session.setAttribute("u", userId);
		session.setAttribute("p", productId);
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		cartItem.setProductId(productId);
		cartItem.setProductName(productService.getById(productId).getProductName());
		int rate=productService.getById(productId).getRate();
		cartItem.setRate(rate);
		cartItem.setAmount(rate);
		cartItem.setQuantity(1);
		cartItem.setFlag(false);
		System.out.println("session attribute"+session.getAttribute("p"));
		cartItemService.addToCartBuyNow(cartItem);
		productService.updateProductMinus(productId);
		session.setAttribute("cartItemId", cartItem.getCartItemId());
		session.setAttribute("productId", cartItem.getProductId());
		int cartItemId=(Integer) session.getAttribute("cartItemId");
		return "redirect:/cartlist-"+cartItemId;
	}
	
	@RequestMapping("/cartlist-{cartItemId}")
	public ModelAndView cartListBuyNow(@ModelAttribute CartItem cartItem, HttpSession session,@PathVariable("cartItemId")int cartItemIdss) {
		int cartItemId=(Integer) session.getAttribute("cartItemId");
		session.setAttribute("cart", cartItemId);
		session.setAttribute("user",cartItemService.getBycartItemId(cartItemId).getUserId());
		CartItem p = cartItemService.getBycartItemId(cartItemId);
		System.out.println("session attribute"+session.getAttribute("cartItemId"));
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String prd=gson.toJson(p);
		
		ModelAndView model = new ModelAndView("cartitem");
		model.addObject("product", prd);
		model.addObject("p", p);
		return model;
	}
	@RequestMapping("/checkout")
	public String getCartCheckout(@RequestParam("userId")int userId,HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		userId=userService.getUserId(user);
		session.setAttribute("u", userId);
		int cartItemId=(Integer) session.getAttribute("cartItemId");
		String productId= (String) session.getAttribute("productId");
		System.out.println("CART ITEM ID: "+cartItemId);
		session.setAttribute("cartitemid", cartItemId);
		session.setAttribute("productid", productId);
		
		return "redirect:/cart?userId="+userId;

	}

}
