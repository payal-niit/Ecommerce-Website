package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attire.dao.ProductDetailDAO;
import com.attire.model.Category;
import com.attire.model.Product;
import com.attire.model.ProductDetail;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class ProductDetailDAOImpl implements ProductDetailDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void createProductDetail(ProductDetail productDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(productDetail);
		
	}

	public String listProductDetail() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ProductDetail> productDetailList = session.createQuery("from ProductDetail").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productDetailList);
		return jsonNames;
	}

	public List<ProductDetail> list() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ProductDetail> productList = session.createQuery("from ProductDetail").list();
		return productList;
	}

	public ProductDetail getByName(String productName) {
		String hql="from ProductDetail where productName=" + "'" + productName + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ProductDetail> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public ProductDetail getById(String productId) {
		String hql="from ProductDetail where productId=" + "'" + productId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ProductDetail> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	

}
