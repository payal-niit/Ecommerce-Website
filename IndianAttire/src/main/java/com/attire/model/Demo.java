package com.attire.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Demo {
	@Id
	private String productId;
	private String productName, categoryName;

}
