package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.attire.dao.CartDAO;
import com.attire.model.Cart;
import com.attire.model.Category;

@Repository
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addToCart(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	public String listCart() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Cart> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public Cart getById(int cartId) {
		String hql="from Cart where cartId=" + "'" + cartId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	

}
