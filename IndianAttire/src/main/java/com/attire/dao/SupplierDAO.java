package com.attire.dao;

import java.util.List;

import com.attire.model.Supplier;

public interface SupplierDAO {
	
	public void createSupplier(Supplier supplier);

	public String listSuppliers();
	
	public List<Supplier> list();
	
	public Supplier getByName(String supplierName);

}
