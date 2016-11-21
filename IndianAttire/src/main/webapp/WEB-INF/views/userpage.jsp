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
<body>
<h3>Add your Details</h3>
<form:form action="addOtherDetails" commandName="userDetail">
<form:hidden path="cartId" value="${sessionScope.userId}"/>
<form:hidden path="userId" value="${sessionScope.userId}"/>
<form:hidden path="username" value="${sessionScope.username}"/>
<form:hidden path="password" value="${sessionScope.password}"/>

<form:input path="firstName" placeholder="add your first name"/>
<form:input path="lastName" placeholder="add your last name"/>
<form:input path="email" placeholder="add your email address"/>
<form:input path="phoneNo" placeholder="add your phoneNo"/>
<form:input path="alternateNo" placeholder="add your mobileNo"/>

<h3>Add your shipping details <small>(You can fill up this later)</small></h3>

<form:input path="shippingAddress.flatNo" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.street" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.addressLine1" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.addressLine2" placeholder="add your mobileNo"/>
<form:input path="shippingAddress.city" placeholder="add your mobileNo"/>
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
</body>
</html>