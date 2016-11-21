package com.attire.config;


import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;


import com.attire.model.BillingAddress;
import com.attire.model.ShippingAddress;
import com.attire.model.UserDetail;
import com.attire.service.EmailService;
import com.attire.service.UserService;

@Component
public class RegistrationHandler {	
	
	@Autowired
	private BillingAddress billingAddress;
	
	@Autowired
	private ShippingAddress shippingAddress;
	
	@Autowired
	private UserService userService;
	
	/*@Autowired
	private EmailService emailService;*/
	
	@SuppressWarnings("unused")
	@Autowired
	private UserDetail userDetail;
	
	public UserDetail initFlow() {
		return new UserDetail();
	}
	
	public String validateUserDetails(UserDetail userDetail, MessageContext messageContext){
		String status = "success";
		if(userDetail.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if(userDetail.getPassword().length()<6 || userDetail.getPassword().length()>=15){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password minimum length should be 6").build());
			status = "failure";
		}
		if(userDetail.getFirstName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"firstName").defaultText("First Name cannot be Empty").build());
			status = "failure";
		}
		if(userDetail.getLastName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"lastName").defaultText("Last Name cannot be Empty").build());
			status = "failure";
		}
		if(userDetail.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		else if(!userDetail.getEmail().contains("@") && !userDetail.getEmail().contains(".com")){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Incorrect Email ID format").build());
			status = "failure";
		}
		if(userDetail.getPhoneNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"phoneNo").defaultText("Primary number cannot be empty").build());
			status = "failure";
		}
		else if(userDetail.getPhoneNo().length()<10 || userDetail.getPhoneNo().length()>10){
			messageContext.addMessage(new MessageBuilder().error().source(
					"phoneNo").defaultText("Check the number. It should have 10 digits").build());
			status = "failure";
		}
		
		return status;
	}
	
	public String duplicateUser(UserDetail userDetail, MessageContext messageContext) {
		String status = "success";
		List<UserDetail> usersDetailList=userService.list();

        for (int i=0; i< usersDetailList.size(); i++) {
            if(userDetail.getEmail().equals(usersDetailList.get(i).getEmail())) {
            	messageContext.addMessage(new MessageBuilder().error().source(
    					"email").defaultText("Email ID already exists").build());
    			status = "failure";
            }

            if(userDetail.getUsername().equals(usersDetailList.get(i).getUsername())) {
            	messageContext.addMessage(new MessageBuilder().error().source(
    					"username").defaultText("Username already exists").build());
    			status = "failure";
            }
        }
        return status;
	}
	
	public String addShippingAddress(ShippingAddress shippingAddress) {
		
		this.shippingAddress.setFlatNo(shippingAddress.getFlatNo());
		this.shippingAddress.setStreet(shippingAddress.getStreet());
		this.shippingAddress.setAddressLine1(shippingAddress.getAddressLine1());
		this.shippingAddress.setAddressLine2(shippingAddress.getAddressLine2());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setPincode(shippingAddress.getPincode());
		
		return "success";
	}
	
	public String validateShippingDetails(ShippingAddress shippingAddress, MessageContext messageContext){
		String status = "success";
		if(shippingAddress.getFlatNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"flatNo").defaultText("Flat NO cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getStreet().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"street").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getAddressLine1().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"addressLine1").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getAddressLine2().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"addressLine2").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"state").defaultText("State cannot be Empty").build());
			status = "failure";
		}
		if(shippingAddress.getCountry().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"country").defaultText("Country cannot be Empty").build());
			status = "failure";
		}
		int len=8;
		if(shippingAddress.getPincode().equals(len)){
			messageContext.addMessage(new MessageBuilder().error().source(
					"pincode").defaultText("Contact number cannot be Empty").build());
			status = "failure";
		}
		return status;
	}
	
	public String addBillingAddress(BillingAddress billingAddress) {
		
		this.billingAddress.setFlatNo(billingAddress.getFlatNo());
		this.billingAddress.setStreet(billingAddress.getStreet());
		this.billingAddress.setAddressLine1(billingAddress.getAddressLine1());
		this.billingAddress.setAddressLine2(billingAddress.getAddressLine2());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setPincode(billingAddress.getPincode());
		
		return "success";
	}
	public String saveDetail(UserDetail userDetail,BillingAddress billingAddress,ShippingAddress shippingAddress) {
		userService.saveOrUpdate(userDetail);
		
		shippingAddress.setUserDetail(userDetail);
		userDetail.setShippingAddress(shippingAddress);
		
		this.shippingAddress.setUserDetail(userDetail);
		
		billingAddress.setUserDetail(userDetail);
		userDetail.setBillingAddress(billingAddress);
		this.billingAddress.setUserDetail(userDetail);
		userService.saveShippingAddress(shippingAddress);
		userService.saveBillingAddress(billingAddress);
		/*try {
			emailService.send(userDetail, "Account Activation",
					"Welcome to Indian Attire. We are happy to have you in our team");
		} catch (MessagingException ms) {
			ms.printStackTrace();

		}*/
		return "success";
	}
	
	
	
	

}
