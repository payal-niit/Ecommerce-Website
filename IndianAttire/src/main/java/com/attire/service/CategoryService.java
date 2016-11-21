package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.CategoryDAOImpl;
import com.attire.model.Category;



@Service
@Transactional
public class CategoryService {
	
	@Autowired
	private CategoryDAOImpl categoryDAO;
	
	public void createCategory(Category category) {		
		categoryDAO.createCategory(category);
		
	}
	
	public Category getByName(String categoryName) {
		return categoryDAO.getByName(categoryName);
	}
	
	public List<Category> list() {
		return categoryDAO.list();
	}
	
	public String listCategories() {
		return categoryDAO.listCategories();
	}
	
	public Category getById(String categoryId) {
		return categoryDAO.getById(categoryId);
	}
	
	public void delete(String categoryId) {
		categoryDAO.delete(categoryId);
	}
	
	public List<Category> listName() {
		return categoryDAO.listName();
	}

}
