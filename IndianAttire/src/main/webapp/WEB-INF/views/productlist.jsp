<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div ng-app="getcategory" ng-controller="getcategoryController">
	<table>
	<tr>
	<td>ProductID
	</td>
	<td>Product Name
	</td>
	<td>Product Rate
	</td>
	<td>Product Quantity
	</td>
	<td>Product Discount
	</td>
	<td>Product Amount
	</td>
	<td>Product Image
	</td>
	</tr>
	<tr ng-repeat="p in prod">
	<td>{{p.productId}}
	</td>
	<td>{{p.productName}}
	</td>
	<td>{{p.rate}}
	</td>
	<td><img src="resources/images/{{p.productId}}.jpg" />
	</td>
	<td>{{p.productId}}
	</td>
	<td>{{p.productId}}
	</td>
	<td>{{prod.productId}}
	</td>
	<td><a href="detail--{{p.productId}}">Add details</a></td>
	</tr>
	
	</table>
	</div>
	<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
<script>
		var products = ${productList};
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.prod = products;
					
				});
	</script>
</body>
</html>