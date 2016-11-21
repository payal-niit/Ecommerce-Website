package com.attire.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import com.google.gson.annotations.Expose;




@Entity
public class Product {
	@Id
	@GenericGenerator(name="seq_id", strategy="com.attire.config.ProductIdGenerator")
	@GeneratedValue(generator="seq_id")
	@Column(name = "productId", unique = true, nullable = false, length = 20)
	@Expose
	private String productId;
	
	@NotEmpty(message="Name is required")
	@Expose
	private String productName;
	
	@Expose
	private int rate;
	
	@Expose
	private int quantity;
	
	@Expose
	private int shippingCost;
	
	@Expose
	private double discount;
	
	@Expose
	private int rating;
	
	@Expose
	private double totalAmountPerPiece;
	
	@Expose
	private double totalAmount;
	
	@Transient
	private MultipartFile image;
	
	@Expose
	private Date dateOfCreation;
	
	public Product() {
		Date d= new Date();
		dateOfCreation=d;
		totalAmountPerPiece=(rate*discount)/100+rate+shippingCost;
		int total=rate*quantity;
		totalAmount=(total*discount)/100 + total+shippingCost;
	}
	
	private String subCategoryId;
	
	private String categoryId;
	
	private String supplierId;
	
	private int colorId;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name="subCategoryId", nullable = false, updatable = false, insertable = false)	
	private SubCategory subCategory;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name="supplierId", nullable = false, updatable = false, insertable = false)	
	private Supplier supplier;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name="categoryId", nullable = false, updatable = false, insertable = false)	
	private Category category;
	
	@ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name="colorId", nullable = false, updatable = false, insertable = false)	
	private Color color;
	
	
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getShippingCost() {
		return shippingCost;
	}

	public void setShippingCost(int shippingCost) {
		this.shippingCost = shippingCost;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public double getTotalAmountPerPiece() {
		return totalAmountPerPiece;
	}

	public void setTotalAmountPerPiece(double totalAmountPerPiece) {
		this.totalAmountPerPiece = totalAmountPerPiece;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(String subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public int getColorId() {
		return colorId;
	}

	public void setColorId(int colorId) {
		this.colorId = colorId;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public Date getDateOfCreation() {
		return dateOfCreation;
	}

	public void setDateOfCreation(Date dateOfCreation) {
		this.dateOfCreation = dateOfCreation;
	}
	
	

}
