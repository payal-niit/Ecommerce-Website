package com.attire.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.attire.model.Category;
import com.attire.model.DisplayData;
import com.attire.service.CategoryService;
import com.attire.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AutocompleteController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	
	
	/*@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody
	List<Category> getTags(@RequestParam String categoryName) {

		return simulateSearchResult(categoryName);

	}
	
	private List<Category> simulateSearchResult(String categoryName) {

		List<Category> result = new ArrayList<Category>();
		List<Category> data = categoryService.list();	
		// iterate a list and filter by tagName
		for (Category tag : data) {
			if (tag.getCategoryName().contains(categoryName)) {
				result.add(tag);
				
			}
		}

		return result;
	}*/
	
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody
	String getTags(@RequestParam String display) {

		return simulateSearchResult(display);

	}
	
	private String simulateSearchResult(String display) {
		List<DisplayData> result = new ArrayList<DisplayData>();
		List<DisplayData> data = productService.listWiseDisplay();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames=null;
		// iterate a list and filter by tagName
		for (DisplayData tag : data) {
			if (tag.getName().contains(display) ) {
				result.add(tag);
				jsonNames = gson.toJson(result);
			}
		}

		return jsonNames;
	}
	

}
