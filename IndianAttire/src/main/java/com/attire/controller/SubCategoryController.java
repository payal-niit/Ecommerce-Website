package com.attire.controller;

import java.util.List;

import javax.persistence.ManyToOne;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.attire.model.Category;
import com.attire.model.SubCategory;
import com.attire.service.CategoryService;
import com.attire.service.SubCategoryService;



@Controller
public class SubCategoryController {
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private CategoryService categoryService;
	

	
	@RequestMapping("/subcategories")
	public String createSubCategory(Model model) {
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("subCategoryList", this.subCategoryService.listSubCategories());
		model.addAttribute("categoryList", this.categoryService.list());
		return "SubCategory";		
	}
	
	@RequestMapping("/addsubcategory")
	public String addSubCategory(@Valid @ModelAttribute("subCategory")SubCategory subCategory, BindingResult result,Model model) {
		if(result.hasErrors()) {
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", this.categoryService.list());
			return "SubCategory";
		}
		else {
		Category category=categoryService.getByName(subCategory.getCategory().getCategoryName());
		categoryService.createCategory(category);
		subCategory.setCategory(category);		
		
		subCategory.setCategoryId(category.getCategoryId());
		subCategoryService.createSubCategory(subCategory);
		return "redirect:/subcategories";
		}
	}
		
		@RequestMapping("/editSubCategory-{subCategoryId}")
		public String editCategory(@PathVariable("subCategoryId") String subCategoryId, Model model) {
			System.out.println("editCategory");
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", this.categoryService.list());
			model.addAttribute("subCategory", this.subCategoryService.getById(subCategoryId));
			
			return "SubCategory";
		}
		
		@RequestMapping("/subCategory/remove/{subCategoryId}")
		public String removeCategory(@PathVariable("subCategoryId") String subCategoryId, ModelMap model) throws Exception {

			subCategoryService.delete(subCategoryId);			
			return "redirect:/subcategories";
		}

	}


