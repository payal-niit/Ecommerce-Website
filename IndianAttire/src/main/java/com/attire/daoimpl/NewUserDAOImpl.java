package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.attire.dao.NewUserDAO;
import com.attire.model.NewUser;
import com.google.gson.Gson;

@Repository
public class NewUserDAOImpl implements NewUserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void createUser(NewUser newUser) {
		sessionFactory.getCurrentSession().saveOrUpdate(newUser);
	}
	
	
	public String listPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<NewUser> personsList = session.createQuery("from NewUser").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(personsList);
		return jsonNames;
	}
	

}
