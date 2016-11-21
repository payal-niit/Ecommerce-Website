package com.attire.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class ProductDetail {
	@Id
	@Expose
	private String productId;
	@Expose
	private String productName;
	
	@Transient
	private MultipartFile img1;
	@Transient
	private MultipartFile img2;
	@Transient
	private MultipartFile img3;
	@Transient
	private MultipartFile img4;
	
	@Expose
	private String occasion;
	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public MultipartFile getImg1() {
		return img1;
	}

	public void setImg1(MultipartFile img1) {
		this.img1 = img1;
	}

	public MultipartFile getImg2() {
		return img2;
	}

	public void setImg2(MultipartFile img2) {
		this.img2 = img2;
	}

	public MultipartFile getImg3() {
		return img3;
	}

	public void setImg3(MultipartFile img3) {
		this.img3 = img3;
	}

	public MultipartFile getImg4() {
		return img4;
	}

	public void setImg4(MultipartFile img4) {
		this.img4 = img4;
	}

	public String getOccasion() {
		return occasion;
	}

	public void setOccasion(String occasion) {
		this.occasion = occasion;
	}

	@OneToOne
	@JoinColumn(name="productId", nullable = false, updatable = false, insertable = false)
	private Product product;
	
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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
