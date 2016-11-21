package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.SubCategoryDAOImpl;
import com.attire.model.SubCategory;



@Service
@Transactional
public class SubCategoryService {
	@Autowired
	private SubCategoryDAOImpl subCategoryDAO;
	
	public void createSubCategory(SubCategory subCategory) {
		subCategoryDAO.createSubCategory(subCategory);
	}

	public String listSubCategories() {
		return subCategoryDAO.listSubCategories();
	}
	
	public List<SubCategory> listWiseSubCategories() {
		return subCategoryDAO.listWiseSubCategories();
	}
	
	public SubCategory getByName(String SubCategoryName) {
		return subCategoryDAO.getByName(SubCategoryName);
	}
	
	public SubCategory getById(String subCategoryId) {
		return subCategoryDAO.getById(subCategoryId);
	}
	public void delete(String subCategoryId) {
		subCategoryDAO.delete(subCategoryId);
	}

}
