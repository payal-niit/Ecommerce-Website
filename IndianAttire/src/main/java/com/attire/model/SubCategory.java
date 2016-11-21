package com.attire.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class SubCategory {
	
	@Id
	@GenericGenerator(name="seq_id", strategy="com.attire.config.SubCategoryIdGenerator")
	@GeneratedValue(generator="seq_id")
	@Column(name = "subCategoryId", unique = true, nullable = false, length = 20)
	@Expose
	private String subCategoryId;
	
	@Expose
	private String categoryId;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
	@JoinColumn(name="categoryId", nullable = false, updatable = false, insertable = false)
	private Category category;
	
	@NotEmpty(message="Add a Subcategory Name")
	@Expose
	private String subCategoryName;
	
	@NotEmpty(message="Add a Subcategory Description")
	@Expose
	private String subCategoryDescription;
	
	@Expose
	private Date dateOfCreation;
	
	@OneToMany(mappedBy="subCategory",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)	
	private Set<Product> product;

	public SubCategory() {
		Date d= new Date();
		dateOfCreation=d;
	}

	public Set<Product> getProduct() {
		return product;
	}

	public void setProduct(Set<Product> product) {
		this.product = product;
	}

	public String getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(String subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public String getSubCategoryDescription() {
		return subCategoryDescription;
	}

	public void setSubCategoryDescription(String subCategoryDescription) {
		this.subCategoryDescription = subCategoryDescription;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Date getDateOfCreation() {
		return dateOfCreation;
	}

	public void setDateOfCreation(Date dateOfCreation) {
		this.dateOfCreation = dateOfCreation;
	}
	

	
	
	

}
