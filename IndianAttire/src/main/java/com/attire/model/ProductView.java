package com.attire.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@Entity
public class ProductView {
	@Id
	@Expose
	private String productId;
	@Expose
	private String productName, categoryName,subCategoryName,supplierName,companyName,colorName;
	@Expose
	private int rate;
	
	@Expose
	private int quantity;
	
	@Expose
	private int shippingCost;
	
	@Expose
	private double discount;
	@Expose
	private double totalAmountPerPiece;
	
	@Expose
	private double totalAmount;
	@Expose
	private Date dateOfCreation;
	@Expose
	private String occasion;
	
	@Expose
	private String style, salwarFabric, washCare, neckStyle;
	@Expose
	private String stitchedType, work, duppataType, pyjamaType,kurtaColor, sleeves;
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
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
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
	public Date getDateOfCreation() {
		return dateOfCreation;
	}
	public void setDateOfCreation(Date dateOfCreation) {
		this.dateOfCreation = dateOfCreation;
	}
	public String getOccasion() {
		return occasion;
	}
	public void setOccasion(String occasion) {
		this.occasion = occasion;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getSalwarFabric() {
		return salwarFabric;
	}
	public void setSalwarFabric(String salwarFabric) {
		this.salwarFabric = salwarFabric;
	}
	public String getWashCare() {
		return washCare;
	}
	public void setWashCare(String washCare) {
		this.washCare = washCare;
	}
	public String getNeckStyle() {
		return neckStyle;
	}
	public void setNeckStyle(String neckStyle) {
		this.neckStyle = neckStyle;
	}
	public String getStitchedType() {
		return stitchedType;
	}
	public void setStitchedType(String stitchedType) {
		this.stitchedType = stitchedType;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getDuppataType() {
		return duppataType;
	}
	public void setDuppataType(String duppataType) {
		this.duppataType = duppataType;
	}
	public String getPyjamaType() {
		return pyjamaType;
	}
	public void setPyjamaType(String pyjamaType) {
		this.pyjamaType = pyjamaType;
	}
	public String getKurtaColor() {
		return kurtaColor;
	}
	public void setKurtaColor(String kurtaColor) {
		this.kurtaColor = kurtaColor;
	}
	public String getSleeves() {
		return sleeves;
	}
	public void setSleeves(String sleeves) {
		this.sleeves = sleeves;
	}
	
	

}
