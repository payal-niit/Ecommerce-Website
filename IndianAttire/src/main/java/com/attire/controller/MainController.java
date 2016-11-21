package com.attire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.attire.model.Category;
import com.attire.service.CategoryService;
import com.attire.service.ProductService;
import com.attire.service.SubCategoryService;

@Controller
public class MainController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("")
	public ModelAndView getList(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		model.addAttribute("top5", this.productService.listProductsViewTop6());
		ModelAndView m=new ModelAndView("index");
		return m;
		}
		
	@RequestMapping("/")
	public ModelAndView getHome(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		model.addAttribute("top5", this.productService.listProductsViewTop6());
		ModelAndView m=new ModelAndView("index");
		return m;
		}
	
	@RequestMapping("/index")
	public String getToHome(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		model.addAttribute("top5", this.productService.listProductsViewTop6());
		return "index";
	}
	
	@RequestMapping("/dy")
	public String getHomeDisplay(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		return "dynamicdisplay";
	}

}
