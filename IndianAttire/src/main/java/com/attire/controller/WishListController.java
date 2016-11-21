package com.attire.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.attire.model.WishList;
import com.attire.service.ProductService;
import com.attire.service.UserService;
import com.attire.service.WishListService;

@Controller
public class WishListController {
	
	@Autowired
	private WishListService wishListService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/addwish-{productId}")
	public String addToWishList(@ModelAttribute("wishList")WishList wishList,@PathVariable("productId") String productId, @RequestParam("userId")int userId,HttpSession session, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		userId=userService.getUserId(user);
		wishList.setUserId(userId);
		
		wishList.setProductName(productService.getById(productId).getProductName());
		
		int rate=productService.getById(productId).getRate();
		wishList.setRate(rate);
		wishList.setAmount(rate);
		wishList.setQuantity(1);
		wishList.setFlag(false);
		
		wishList.setProductId(productId);
		
		wishListService.addToWishList(wishList);
		String message="Product successfully added to wishlist";
		model.addAttribute("wishlist", message);
		return "redirect:/wishlist";
	}
	
	@RequestMapping("/wishlist")
	public String getWishList(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId=userService.getUserId(user);
		model.addAttribute("wishlist", wishListService.getByWishListIdGSON(userId));
		return "wishlist";
	}

}
