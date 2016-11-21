package com.attire.dao;


import java.util.List;

import com.attire.model.Product;



public interface ProductDAO {
	
	public void createProduct(Product product);

	public String listProducts();
	
	public List<Product> listWiseProducts();

}
