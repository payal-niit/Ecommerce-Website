package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.attire.dao.ColorDAO;
import com.attire.model.Color;
import com.google.gson.Gson;



@Repository
public class ColorDAOImpl implements ColorDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void createColor(Color color) {
		sessionFactory.getCurrentSession().saveOrUpdate(color);
		
	}

	public String listCategories() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Color> colorList = session.createQuery("from Color").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(colorList);
		return jsonNames;
	}
	
	public Color getByName(String colorName) {
		String hql="from Color where colorName=" + "'" + colorName + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Color> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

	public List<Color> list() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Color> colorList = session.createQuery("from Color").list();
		
		return colorList;
	}
	
	

}
