package com.attire.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.attire.dao.SupplierDAO;
import com.attire.model.Supplier;
import com.google.gson.Gson;



@Repository
public class SupplierDAOImpl implements SupplierDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void createSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}

	public String listSuppliers() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Supplier> supplierList = session.createQuery("from Supplier").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(supplierList);
		return jsonNames;
	}
	
	public Supplier getByName(String supplierName) {
		String hql="from Supplier where supplierName=" + "'" + supplierName + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> list=query.list();
		if(list!=null && !list.isEmpty()) {
			return list.get(0);
		}
		else
			return null;
	}

	public List<Supplier> list() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Supplier> supplierList = session.createQuery("from Supplier").list();
		
		return supplierList;
	}
	
	

}
