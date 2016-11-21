package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attire.dao.UserDAO;
import com.attire.model.BillingAddress;
import com.attire.model.Cart;
import com.attire.model.Category;
import com.attire.model.ShippingAddress;
import com.attire.model.User;
import com.attire.model.UserDetail;
import com.attire.model.UserRole;

@Repository
public class UserDAOImpl implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public void saveOrUpdate(UserDetail userDetail) {
		Session session=sessionFactory.getCurrentSession();        
        
		User newUser=new User();
		newUser.setUsername(userDetail.getUsername());
		newUser.setPassword(userDetail.getPassword());
		newUser.setEnabled(true);
		newUser.setUserId(userDetail.getUserId());
		
		
		session.saveOrUpdate(newUser);
		
		UserRole userRole = new UserRole();
		userRole.setRoleId(1);
		userRole.setUserId(newUser.getUserId());
		
		session.saveOrUpdate(userRole);
		
		Cart cart=new Cart();
		cart.setCartId(newUser.getUserId());
		cart.setUserId(newUser.getUserId());
		
		session.saveOrUpdate(cart);
		
		userDetail.setUserId(newUser.getUserId());
		userDetail.setCartId(cart.getCartId());
		
		/*userDetail.getBillingAddress().setUserDetail(userDetail);
        userDetail.getShippingAddress().setUserDetail(userDetail);
        session.saveOrUpdate(userDetail.getBillingAddress());
        session.saveOrUpdate(userDetail.getShippingAddress());*/
        
        session.saveOrUpdate(userDetail);
		
		
        session.flush();
		
	}

	public UserDetail getByName(String username) {
		String hql="from UserDetail where username=" + "'" + username + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserDetail> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

	public UserDetail getById(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public User getById(int userId) {
		String hql="from User where userId=" + "'" + userId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	
	public void saveOrUpdateUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		user.setEnabled(true);
		session.saveOrUpdate(user);
		Cart cart=new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		UserRole userRole = new UserRole();
		userRole.setRoleId(1);
		userRole.setUserId(user.getUserId());
		session.saveOrUpdate(userRole);
		session.saveOrUpdate(user);
	}
	
	public void saveOrUpdate2(UserDetail userDetail) {
		Session session=sessionFactory.getCurrentSession();      
		userDetail.getBillingAddress().setUserDetail(userDetail);
        userDetail.getShippingAddress().setUserDetail(userDetail);
        session.saveOrUpdate(userDetail.getBillingAddress());
        session.saveOrUpdate(userDetail.getShippingAddress());
        
        session.saveOrUpdate(userDetail);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}
	
	public List<UserDetail> list() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<UserDetail> userList = session.createQuery("from UserDetail").list();
		
		return userList;
	}
	
	public ShippingAddress getShippingAddressById(int UserDetail_userId) {
		String hql="from ShippingAddress where UserDetail_userId=" + "'" + UserDetail_userId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}
	
	public BillingAddress getBillingAddressById(int UserDetail_userId) {
		String hql="from BillingAddress where UserDetail_userId=" + "'" + UserDetail_userId + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BillingAddress> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

}
