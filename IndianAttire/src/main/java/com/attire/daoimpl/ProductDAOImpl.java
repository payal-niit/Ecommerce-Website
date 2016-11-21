package com.attire.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.attire.dao.ProductDAO;
import com.attire.model.Category;
import com.attire.model.DisplayData;
import com.attire.model.Product;
import com.attire.model.ProductView;
import com.attire.model.SubCategory;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void createProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}

	public String listProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery("from Product").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productList);
		return jsonNames;
	}
	
	public String listProductsView() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ProductView> productList = session.createQuery("from ProductView").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productList);
		return jsonNames;
	}
	
	public List<ProductView> listWiseProductView() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ProductView> productList = session.createQuery("from ProductView").list();
		return productList;
	}
	
	public List<DisplayData> listWiseDisplay() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<DisplayData> productList = session.createQuery("from DisplayData").list();
		return productList;
	}

	public List<Product> listWiseProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery("from Product").list();
		return productList;
	}
	
	public Product getById(String productId) {
		String hql="from Product where productId=" + "'" + productId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public ProductView getByIdProductView(String productId) {
		String hql="from ProductView where productId=" + "'" + productId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ProductView> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public String listProductsTop6() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery("from Product order by productId DESC").setMaxResults(6).list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productList);
		return jsonNames;
	}
	
	public String listProductsViewTop6() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ProductView> productList = session.createQuery("from ProductView order by productId DESC").setMaxResults(6).list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productList);
		return jsonNames;
	}
	
	public void delete(String productId) {
		Product ProductToDelete = new Product();
		ProductToDelete.setProductId(productId);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}
	
	public String listProductsById(String productId) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery("from Product where productId=" + "'" + productId + "'").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(productList);
		return jsonNames;
	}
	
	public void updateProductPlus(String id) {
		Session session=sessionFactory.openSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			 Product product = 
	                    (Product)session.get(Product.class, id);
			 product.setQuantity(product.getQuantity()+1);
			 session.update(product);
			 tx.commit();			 
		}
		catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	}
	
	public void updateProductMinus(String id) {
		Session session=sessionFactory.openSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			 Product product = 
	                    (Product)session.get(Product.class, id);
			 product.setQuantity(product.getQuantity()-1);
			 session.update(product);
			 tx.commit();			 
		}
		catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	}
	
}
