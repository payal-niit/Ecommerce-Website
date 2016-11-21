package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.ProductDetailDAOImpl;
import com.attire.model.ProductDetail;

@Service
@Transactional
public class ProductDetailService {
	
	@Autowired
	private ProductDetailDAOImpl productDetailDAO;
	
	public void createProductDetail(ProductDetail productDetail) {
		productDetailDAO.createProductDetail(productDetail);
	}

	public String listProductDetail() {
		return productDetailDAO.listProductDetail();
	}
	
	public List<ProductDetail> list() {
		return productDetailDAO.list();
	}
	
	public ProductDetail getByName(String productName) {
		return productDetailDAO.getByName(productName);
	}
	
	public ProductDetail getById(String productId) {
		return productDetailDAO.getById(productId);
	}

}
