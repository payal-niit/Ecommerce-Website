package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attire.dao.WishListDAO;

import com.attire.model.WishList;
import com.attire.model.WishListView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class WishListDAOImpl implements WishListDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addToWishList(WishList wishList) {
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
		
	}

	
	public List<WishList> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getByWishListIdGSON(int userId) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<WishListView> wishList = session.createQuery("from WishListView  where userId =" + userId + "order by wishListId").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(wishList);
		return jsonNames;
	}

	public WishList getBywishListId(int wishListId) {
		// TODO Auto-generated method stub
		return null;
	}

	public String listWishList() {
		// TODO Auto-generated method stub
		return null;
	}

}
