package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attire.dao.SubCategoryDAO;
import com.attire.model.Category;
import com.attire.model.SubCategory;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void createSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
	}

	public String listSubCategories() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SubCategory> subCategoryList = session.createQuery("from SubCategory order by subCategoryId").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(subCategoryList);
		return jsonNames;
	}

	public List<SubCategory> listWiseSubCategories() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SubCategory> subCategoryList = session.createQuery("from SubCategory order by subCategoryId").list();
		return subCategoryList;
	}
	
	public SubCategory getByName(String SubCategoryName) {
		String hql="from SubCategory where SubCategoryName=" + "'" + SubCategoryName + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<SubCategory> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public SubCategory getById(String subCategoryId) {
		String hql="from SubCategory where subCategoryId=" + "'" + subCategoryId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<SubCategory> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

	
	public void delete(String subCategoryId) {
		SubCategory SubCategoryToDelete = new SubCategory();
		SubCategoryToDelete.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(SubCategoryToDelete);
	}

}
