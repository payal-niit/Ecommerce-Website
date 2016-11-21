package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.attire.dao.CategoryDAO;
import com.attire.model.Category;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



@Repository
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void createCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}

	public String listCategories() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery("from Category order by categoryId").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(categoryList);
		return jsonNames;
	}
	
	public Category getByName(String categoryName) {
		String hql="from Category where categoryName=" + "'" + categoryName + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public Category getById(String categoryId) {
		String hql="from Category where categoryId=" + "'" + categoryId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

	public List<Category> list() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery("from Category order by categoryId").list();
		
		return categoryList;
	}
	
	public List<Category> listName() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery("Select categoryId, categoryName from Category").list();
		
		return categoryList;
	}
	public void delete(String categoryId) {
		Category CategoryToDelete = new Category();
		CategoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(CategoryToDelete);
	}
	

}
