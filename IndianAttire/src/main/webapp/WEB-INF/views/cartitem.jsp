<%@ include file="/WEB-INF/views/header.jsp"%>
<html>
<head>
<meta charset="UTF-8">                                   
<link rel="stylesheet" href="resources/css/blueimp-gallery.min.css">
<link rel="stylesheet" href="resources/css/image-gallery.css">
<style type="text/css">#links a img {width:120px;height:120px;}</style>
</head>
<script src="resources/js/blueimp-gallery.min.js"></script>
	<body>
<div ng-app="myApp" ng-controller="getData" class="container">

<div class="container">
<br><br>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Rate</th>
					<th>Image</th>
					<th>Buy now</th>
					
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>{{productdata.productName}}</td>
					<td>{{productdata.quantity}}</td>
					<td>{{productdata.rate}}</td>
					<td><img src="resources/images/{{productdata.productId}}.jpg" width="225" height="250"></td>
					<td><a href="checkout?userId=${sessionScope.user}">CheckOut</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	</div>
<script>
var myApp = angular.module('myApp', []);
	myApp.controller('getData', function($scope, $http, $location) {
		$scope.searchKeyword = location.search.substr(15);
		$scope.letterLimit = 3;
		
		$scope.productdata = ${product};
		
	});
</script>

</body>
</html>