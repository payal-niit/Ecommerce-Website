package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.SupplierDAOImpl;
import com.attire.model.Supplier;



@Service
@Transactional
public class SupplierService {
	
	@Autowired
	private SupplierDAOImpl supplierDAO;
	
	public void createSupplier(Supplier supplier) {		
		supplierDAO.createSupplier(supplier);
		
	}
	
	public Supplier getByName(String supplierName) {
		return supplierDAO.getByName(supplierName);
	}
	
	public List<Supplier> list() {
		return supplierDAO.list();
	}
	
	public String listSuppliers() {
		return supplierDAO.listSuppliers();
	}

}
