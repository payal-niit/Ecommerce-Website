<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<br>
	<div class="container">
	<div class="col-md-5 col-xs-5 col-lg-5 col-sm-5" style="margin-left: 250px; background:#DED4D1; text-align:center;border: 1px solid grey;">
		<h3>Register</h3>
		<hr class="colorgraph">
		<form:form action="adduser" commandName="userDetail">
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="username" class="form-control input-sm"
						placeholder="Select a username" />
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input type="password" path="password" class="form-control input-sm"
						placeholder="Select a password" />
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="username"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="password"></form:errors>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="firstName" class="form-control input-sm"
						placeholder="First Name" />
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="lastName" class="form-control input-sm"
						placeholder="Last Name" />
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="firstName"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="lastName"></form:errors>
				</div>
				</div>
			</div>
			<div class="row">
				<div style="margin-left: 25px" class="col-md-10 col-xs-10 col-lg-10 col-sm-10">
					<form:input path="email" class="form-control input-sm"
						placeholder="Add Email ID" />
				</div>				
				<div class="row">
				<div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
				<form:errors class="error" path="email"></form:errors>
				</div>				
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="phoneNo" class="form-control input-sm"
						placeholder="Phone Number" />
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="alternateNo" class="form-control input-sm"
						placeholder="Other Number" />
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="phoneNo"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="alternateNo"></form:errors>
				</div>
				</div>
			</div>
			<br>
			<a id="shipping" href="#addshipping" class="btn btn-primary">Add Shipping Address<small> Or Skip</small></a>
			<div id="addshipping" style="display:none;">
			<h3>Add Shipping Address</h3>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="shippingAddress.flatNo" class="form-control input-sm" placeholder="Flat NO"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="shippingAddress.street" class="form-control input-sm" placeholder="Street"/>
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="shippingAddress.flatNo"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="shippingAddress.street"></form:errors>
				</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="shippingAddress.addressLine1" class="form-control input-sm" placeholder="Address line 1"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="shippingAddress.addressLine2" class="form-control input-sm" placeholder="Address line 2"/>
				</div>
				
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="shippingAddress.addressLine1"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="shippingAddress.addressLine2"></form:errors>
				</div>
				
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="shippingAddress.city" class="form-control input-sm" placeholder="City"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="shippingAddress.state" class="form-control input-sm" placeholder="State"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="shippingAddress.country" class="form-control input-sm" placeholder="Country"/>
				</div>
				<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="shippingAddress.city"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="shippingAddress.state"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="shippingAddress.country"></form:errors>
				</div>
				</div>
			</div>
				<div class="row">
				<div style="margin-left: 85px" class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:input path="shippingAddress.pincode" placeholder="Pincode"/>
				</div>
				<a id="billing" href="#addbilling" class="btn btn-primary">Add Billing Address<small>Or Skip</small></a>
				</div>
				
			</div>
			<br>
			
			<div id="addbilling" style="display:none;">
			
			<h3>Add Shipping Address</h3>
			<hr class="colorgraph">
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="billingAddress.flatNo" class="form-control input-sm" placeholder="Flat NO"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="billingAddress.street" class="form-control input-sm" placeholder="Street"/>
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="billingAddress.flatNo"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="billingAddress.street"></form:errors>
				</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="billingAddress.addressLine1" class="form-control input-sm" placeholder="Address line 1"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="billingAddress.addressLine2" class="form-control input-sm" placeholder="Address line 2"/>
				</div>
				
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="billingAddress.addressLine1"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="billingAddress.addressLine2"></form:errors>
				</div>
				
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="billingAddress.city" class="form-control input-sm" placeholder="City"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="billingAddress.state" class="form-control input-sm" placeholder="State"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="billingAddress.country" class="form-control input-sm" placeholder="Country"/>
				</div>
				<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="billingAddress.city"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="billingAddress.state"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="billingAddress.country"></form:errors>
				</div>
				</div>
			</div>
				<div class="row">
				<div style="margin-left: 85px" class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:input path="billingAddress.pincode" placeholder="Pincode"/>
				</div>
				</div>
				
			</div>
			<input type="submit" value="Register" />
<input type="reset" value="Reset" />
			</form:form>
			</div></div>
<%-- <form:form action="adduser" commandName="userDetail">
<form:input path="username" placeholder="select a username"/>
<form:input type="password" path="password" placeholder="select a password"/>
<form:input path="firstName" placeholder="add your first name"/>
<form:input path="lastName" placeholder="add your last name"/>
<form:input path="email" placeholder="add your email address"/>
<form:input path="phoneNo" placeholder="add your phoneNo"/>
<form:input path="alternateNo" placeholder="add your mobileNo"/>

<h3>Add your shipping details <small>(You can fill up this later)</small></h3>
<form:input path="shippingAddress.flatNo" placeholder="Flat NO"/>
<form:input path="shippingAddress.street" placeholder="Street"/>
<form:input path="shippingAddress.addressLine1" placeholder="Address line1"/>
<form:input path="shippingAddress.addressLine2" placeholder="Address line2"/>
<form:input path="shippingAddress.city" placeholder="Add your City"/>
<form:input path="shippingAddress.state" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.country" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.pincode" placeholder="add your mobileNo"/>


<h3>Add your billing details <small>(You can fill up this later)</small></h3>
<form:input path="billingAddress.flatNo" placeholder="add your mobileNo"/>
<form:input path="billingAddress.street" placeholder="add your mobileNo"/>
<form:input path="billingAddress.addressLine1" placeholder="add your mobileNo"/>
<form:input path="billingAddress.addressLine2" placeholder="add your mobileNo"/>
<form:input path="billingAddress.city" placeholder="add your mobileNo"/>
<form:input path="billingAddress.state" placeholder="add your mobileNo"/>
<form:input path="billingAddress.country" placeholder="add your mobileNo"/>
<form:input path="billingAddress.pincode" placeholder="add your mobileNo"/>


<input type="submit" value="Register" />
<input type="reset" value="Reset" />
</form:form>
 --%>
<script>
$(document).ready(function(){
    $("#shipping").click(function(){
        $("#addshipping").toggle();        
    });
});
$(document).ready(function(){
    $("#billing").click(function(){        
        $("#addbilling").toggle();
    });
});
</script>	
</body>
</html>