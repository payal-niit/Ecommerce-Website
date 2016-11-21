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
		<form:form commandName="userDetail">
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
				<span style="color: #ff0000">${usernameMsg}</span>
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
				<span style="color: #ff0000">${emailMsg}</span>
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
			<input type="submit" name="_eventId_submit"
							class="btn btn-md btn-primary" value="Register">
							<input type="submit" name="_eventId_edit"
							class="btn btn-md btn-success" value="Reset">
						<input type="submit" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="Cancel">
			</form:form>
			</div>
			</div>
			</html>