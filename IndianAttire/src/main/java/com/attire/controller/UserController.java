package com.attire.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.attire.model.BillingAddress;
import com.attire.model.ProductDetail;
import com.attire.model.ShippingAddress;
import com.attire.model.User;
import com.attire.model.UserDetail;
import com.attire.service.CartService;
import com.attire.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String RegisterPage(Model model) {

		UserDetail userDetail = new UserDetail();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		
		userDetail.setBillingAddress(billingAddress);
		userDetail.setShippingAddress(shippingAddress);

		model.addAttribute("userDetail", userDetail);
		return "redirect:/reg";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("userDetail") UserDetail userDetail, BindingResult result) {
		if (result.hasErrors()) {
			return "registration";
		}
		userService.saveOrUpdate(userDetail);
		return "redirect:/";

	}
	
	@RequestMapping("/loginpage")
	public String login() {
		
		return "login";
		
	}
	
	@RequestMapping("/perform_logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/accessdenied")
	public String getAccessDenied() {
		return "accessdenied";
	}
	
	@RequestMapping("/sessionexpired")
	public String getSessionManaged() {
		return "sessionexpired";
	}
	
	

	/*-----------------Second way-------------*/
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/registerUserOnly", method = RequestMethod.GET)
	public String RegisterUserPage(Model model) {
		model.addAttribute("user", new User());
		return "registeruser";
	}
	
	@RequestMapping("/add_user")
	public String addOnlyUser(@ModelAttribute("user")User user,HttpSession session) {
		userService.saveOrUpdateUser(user);
		session.setAttribute("userId", user.getUserId());
		session.setAttribute("username", user.getUsername());
		session.setAttribute("password", user.getPassword());	
		return "redirect:/userpage";	
	}
	@RequestMapping("/userpage")
	public String userPage(Model m,@ModelAttribute("productDetail") ProductDetail productDetail) {
		UserDetail userDetail = new UserDetail();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		
		
		userDetail.setBillingAddress(billingAddress);
		userDetail.setShippingAddress(shippingAddress);

		m.addAttribute("userDetail", userDetail);
		return "userpage";
	}
	
	@RequestMapping("/addOtherDetails")
	public String actionUser(@ModelAttribute("userDetail") UserDetail userDetail) {
		userService.saveOrUpdate2(userDetail);
		return "redirect:/";
	}
}
