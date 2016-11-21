package com.attire.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.attire.model.Category;
import com.attire.model.Color;
import com.attire.model.Product;
import com.attire.model.Supplier;
import com.attire.service.CategoryService;



@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/categories")
	public String categories(Model model) {
		model.addAttribute("category", new Category());
		
		model.addAttribute("category_list", this.categoryService.listCategories());
		return "Category";
		
	}
	
	@RequestMapping(value="/addcategory", method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("category")Category category, BindingResult result) {
		if(result.hasErrors()) {
			return "Category";
		}
		else {
		categoryService.createCategory(category);
		return "redirect:/categories";
		}
	}
	
	@RequestMapping("/editCategory-{categoryId}")
	public String editCategory(@PathVariable("categoryId") String categoryId, Model model) {
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryService.getById(categoryId));
		
		return "Category";
	}
	
	@RequestMapping("category/remove/{categoryId}")
	public String removeCategory(@PathVariable("categoryId") String categoryId, ModelMap model) throws Exception {
		try {
		categoryService.delete(categoryId);
		} catch(Exception e) {
			e.printStackTrace();
			String message="Unable to delete Category as Subcategory exists";
			model.addAttribute("categoryId", message);
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/categories";
	}

}
