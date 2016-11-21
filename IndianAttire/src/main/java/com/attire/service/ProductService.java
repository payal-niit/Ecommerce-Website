package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.ProductDAOImpl;
import com.attire.model.DisplayData;
import com.attire.model.Product;
import com.attire.model.ProductView;
@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductDAOImpl productDAO;
	
	public void createProduct(Product product) {
		productDAO.createProduct(product);
	}

	public String listProducts() {
		return productDAO.listProducts();
	}
	
	public List<Product> listWiseProducts() {
		return productDAO.listWiseProducts();
	}
	
	public Product getById(String productId) {
		return productDAO.getById(productId);
	}
	
	public String productName(String productId) {
		return productDAO.getById(productId).getProductName();
	}
	
	public void delete(String productId) {
		productDAO.delete(productId);
	}
	
	public String listProductsById(String productId) {
		return productDAO.listProductsById(productId);
	}
	
	public ProductView getByIdProductView(String productId) {
		return productDAO.getByIdProductView(productId);
	}
	
	public String listProductsView() {
		return productDAO.listProductsView();
	}
	
	public String listProductsTop6() {
		return productDAO.listProductsTop6();
	}
	
	public String listProductsViewTop6() {
		return productDAO.listProductsViewTop6();
	}
	
	public List<ProductView> listWiseProductView() {
		return productDAO.listWiseProductView();
	}
	
	public List<DisplayData> listWiseDisplay() {
		return productDAO.listWiseDisplay();
	}
	
	public void updateProductPlus(String id) {
		productDAO.updateProductPlus(id);
	}
	public void updateProductMinus(String id) {
		productDAO.updateProductMinus(id);
	}

}
