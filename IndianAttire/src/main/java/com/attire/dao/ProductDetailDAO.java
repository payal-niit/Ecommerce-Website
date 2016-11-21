package com.attire.dao;

import java.util.List;

import com.attire.model.Category;
import com.attire.model.ProductDetail;

public interface ProductDetailDAO {
	
	public void createProductDetail(ProductDetail productDetail);

	public String listProductDetail();
	
	public List<ProductDetail> list();
	
	public ProductDetail getByName(String productName);

}
