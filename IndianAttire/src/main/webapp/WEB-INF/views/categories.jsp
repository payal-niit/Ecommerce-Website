<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="category" action="add/category">
<%-- <form:input type="hidden" path="categoryId"/> --%>
<form:input path="categoryName" /><form:errors path="categoryName"></form:errors>
<br>
<form:input path="categoryDescription" /><form:errors path="categoryDescription"></form:errors>

<input type="submit" value="Create Category"/>
<input type="reset" value="Reset"/>
</form:form>

<hr>

<%-- <form:form commandName="color" action="add/color">
<form:input path="colorName" />

<input type="submit" value="Create Color"/>
<input type="reset" value="Reset"/>
</form:form>
<hr>

<form:form commandName="supplier" action="add/supplier">
<form:input path="supplierName" />
<form:input path="aboutSupplier" />
<form:input path="companyName" />
<form:radiobutton path="codAvailable" value="true" /> Yes
<form:radiobutton path="codAvailable" value="false" /> No
<input type="submit" value="Create Supplier"/>
<input type="reset" value="Reset"/>
</form:form> --%>
<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
<script>
		var prod = ${category_list};
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.products = prod;
					
				});
	</script>
<div ng-app="getcategory" ng-controller="getcategoryController">
<table border="1px">
<tr><td>Username</td>
<td>Created On</td>
<td>Name</td>
<td>Desc</td></tr>
<tr ng-repeat="user in products">
<td>{{user.categoryId}}</td>
<td>{{user.dateOfCreation}}</td>
<td>{{user.categoryName}}</td>
<td>{{user.categoryDescription}}</td>

<td><a href="categories-{{user.categoryId}}">edit</a> | <a href="category/remove/{{user.categoryId}}">Delete</a></td>
</tr>
</table>
</body>
</html>