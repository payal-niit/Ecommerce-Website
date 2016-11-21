<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function showalert() {
	alert("User is created");	
}
</script>
</head>
<body>
<form:form commandName="user" action="add/user">
<form:input path="username" placeholder="Enter a username" />
<form:input type="password" placeholder="Select a password" path="password"/>

<br />
<input type="submit" value="Register" onclick="showalert()"/>
<input type="reset" value="Reset" />

</form:form>
<hr>
<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
<script>
		var prod = ${userList};
		var prod1=${categoryList}
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.products = prod;
					$scope.cat = prod1;
					
					
				});
	</script>
<div ng-app="getcategory" ng-controller="getcategoryController">
<table border="1px">
<tr><td>Username</td>
<td>Created On</td></tr>
<tr ng-repeat="user in products">
<td>{{user.username}}</td>
<td>{{user.dateOfCreation}}</td>

</tr>
</table>
</div>

<div ng-app="getcategory" ng-controller="getcategoryController">
<table border="1px">
<tr><td>Username</td>
<td>Created On</td></tr>
<tr ng-repeat="user in cat">
<td>{{user.categoryId}}</td>
<td>{{user.dateOfCreation}}</td>

</tr>
</table>
</div>
</body>
</html>