package com.attire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.attire.model.Category;
import com.attire.model.NewUser;
import com.attire.service.CategoryService;
import com.attire.service.NewUserService;



@Controller
public class NewUserController {
	
	@Autowired
	private NewUserService newUserService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/registerUser",method = RequestMethod.GET)
	public String user(Model model) {
		model.addAttribute("user",new NewUser());
		model.addAttribute("category",new Category());
		model.addAttribute("userList", this.newUserService.listPersons());
		model.addAttribute("categoryList", this.categoryService.listCategories());
		return "register";
	}
	
	@RequestMapping(value="/add/user",method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user")NewUser newUser) {
		newUserService.createUser(newUser);
		return "redirect:/register";
	}
	

}
