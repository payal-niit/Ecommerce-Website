package com.attire.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Supplier {
	@Id
	@GenericGenerator(name="seq_id", strategy="com.attire.config.SupplierIdGenerator")
	@GeneratedValue(generator="seq_id")
	@Column(name = "supplierId", unique = true, nullable = false, length = 20)
	private String supplierId;
	
	@NotEmpty(message="Supplier Name is compulsory")
	private String supplierName;
	
	@NotEmpty(message="Fill up about your company")
	private String aboutSupplier;
	
	@NotEmpty(message="Fill up the company details")
	private String companyName;
	
	private boolean codAvailable;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getAboutSupplier() {
		return aboutSupplier;
	}

	public void setAboutSupplier(String aboutSupplier) {
		this.aboutSupplier = aboutSupplier;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public boolean isCodAvailable() {
		return codAvailable;
	}

	public void setCodAvailable(boolean codAvailable) {
		this.codAvailable = codAvailable;
	}
	
	
	
}
