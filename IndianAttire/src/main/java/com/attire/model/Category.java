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
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.google.gson.annotations.Expose;

@Entity
public class Category {
	@Id
	@GenericGenerator(name="seq_id", strategy="com.attire.config.CategoryIdGenerator")
	@GeneratedValue(generator="seq_id")
	@Column(name = "CategoryId", unique = true, nullable = false, length = 20)
	@Expose
	private String categoryId;
	
	@Expose
	@NotEmpty(message="Name is compulsory")
	private String categoryName;
	
	@Expose
	@NotEmpty(message="Category Desc is compulsory")
	private String categoryDescription;
	
	@Expose
	private Date dateOfCreation;
	
	public Category() {
		Date d= new Date();
		dateOfCreation=d;
		
	}
	@JsonIgnore
	@OneToMany(mappedBy="category",cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)	
	private Set<SubCategory> subCategory;
	
	@JsonIgnore
	@OneToMany(mappedBy="category",cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)	
	private Set<Product> product;

	@JsonIgnore
	public Set<Product> getProduct() {
		return product;
	}

	public void setProduct(Set<Product> product) {
		this.product = product;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
	@JsonIgnore
	public Set<SubCategory> getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(Set<SubCategory> subCategory) {
		this.subCategory = subCategory;
	}

	public Date getDateOfCreation() {
		return dateOfCreation;
	}

	public void setDateOfCreation(Date dateOfCreation) {
		this.dateOfCreation = dateOfCreation;
	}
	
}
