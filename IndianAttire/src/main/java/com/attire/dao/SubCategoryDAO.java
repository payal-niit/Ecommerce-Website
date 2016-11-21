package com.attire.dao;


import java.util.List;

import com.attire.model.SubCategory;



public interface SubCategoryDAO {
	
	public void createSubCategory(SubCategory subCategory);

	public String listSubCategories();
	
	public List<SubCategory> listWiseSubCategories();
	
	public SubCategory getByName(String SubCategoryName); 

}
