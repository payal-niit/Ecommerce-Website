package com.attire.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class NewUser {
	@Id
	@GenericGenerator(name="seq_id", strategy="com.attire.config.UserIdGenerator")
	@GeneratedValue(generator="seq_id")
	@Column(name = "userId", unique = true, nullable = false, length = 20)
	private String userId;
	
	
	
	private String username;
	@Size(min=6,max=18)
	@NotEmpty(message="Select a Password")
	private String password;	
	
	private String role;
	private boolean enabled;

	private Date dateOfCreation;
	

	public Date getDateOfCreation() {
		return dateOfCreation;
	}

	public void setDateOfCreation(Date dateOfCreation) {
		this.dateOfCreation = dateOfCreation;
	}

	public NewUser() {
		role="ROLE_USER";
		enabled=true;
		
		Date d=new Date();
		dateOfCreation=d;
		
		
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	/*public String toString() {
		return "{userId : '" + userId + "'," + "username : '" + username + "'," + "dateOfCreation :'" + dateOfCreation +"'}";
	}*/

}
