package com.attire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.attire.service.CategoryService;

@ControllerAdvice("com.attire.controller")
public class GlobalController {
	@Autowired
	CategoryService categoryService;
	
	@ModelAttribute
	public void getDynamicaData(Model model) {
		model.addAttribute("categoryList", this.categoryService.list());
	}

}
