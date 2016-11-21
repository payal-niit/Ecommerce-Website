package com.attire.dao;

import java.util.List;

import com.attire.model.Category;

public interface CategoryDAO {
	
	public void createCategory(Category category);

	public String listCategories();
	
	public List<Category> list();
	
	public Category getByName(String categoryName);

}
