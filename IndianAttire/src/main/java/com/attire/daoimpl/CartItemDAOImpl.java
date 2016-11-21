package com.attire.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.attire.dao.CartItemDAO;
import com.attire.model.CartItem;
import com.attire.model.Category;
import com.attire.model.ProductView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class CartItemDAOImpl implements CartItemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void addToCartBuyNow(CartItem cartItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
		
	}

	public String listCart() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<CartItem> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getByCartIdGSON(int cartId) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<CartItem> cartList = session.createQuery("from CartItem  where cartId =" + cartId + "order by categoryId").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(cartList);
		return jsonNames;
	}

	public String getByCartItemIdGSON(int cartItemId) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<CartItem> cartList = session.createQuery("from CartItem  where cartItemId =" + cartItemId ).list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonNames = gson.toJson(cartList);
		return jsonNames;
	}

	public CartItem getByCartId(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addToCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		
	}

	public CartItem getBycartItemId(int cartItemId) {
		String hql="from CartItem where cartItemId=" + "'" + cartItemId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CartItem> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public void updateCart(int cartItemId) {
		Session session=sessionFactory.openSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			CartItem cartItem = 
	                    (CartItem)session.get(CartItem.class, cartItemId);
			cartItem.setFlag(true);
			 session.update(cartItem);
			 tx.commit();			 
		}
		catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	}
	
	public void delete(int cartItemId) {
		CartItem CartItemToDelete = new CartItem();
		CartItemToDelete.setCartItemId(cartItemId);
		sessionFactory.getCurrentSession().delete(CartItemToDelete);
	}

}
