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
<style>
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
.error {color:red;}
.doubleUnderline {
    text-decoration:underline;
    border-bottom: 1px solid #000;
    
}
</style>

</head>
<body>	
		<br>
		<div class="container">
	<div class="col-md-10 col-xs-10 col-lg-10 col-sm-10" style="margin-left: 100px; text-align:center;border: 1px solid grey;">
		<h3>Manage Product</h3>
		<hr class="colorgraph">
		<form:form role="form" method="post" commandName="product" action="addproduct" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<c:if test="${!empty product.productId}">
					<form:input type="hidden" class="form-control col-lg-6" path="productId" />
					</c:if>

				</div>
			</div>

			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="productName">Give a Product Name</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					<form:input path="productName" class="form-control"
						placeholder="Add product Name" />
				
				<form:errors class="error" path="productName"></form:errors>
				</div>
			</div>
				<div class="row">
			<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="productName">Select a Category</form:label>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
			<form:select id="data" class="form-control" path="category.categoryName"
			items="${categoryList}" var="category" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
			</div></div>
				<div class="row">
			<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="productName">Select a SubCategory</form:label>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">			 
				<form:select class="form-control" path="subCategory.subCategoryName">
					<c:forEach items="${categoryList}" var="category">
					<form:option style ="margin-left:20px;" value="${category.categoryName}" disabled="true"></form:option>
					<c:forEach items="${category.subCategory}" var="subCategory">
					<form:option style="font-weight:bold;" value="${subCategory.subCategoryName}"></form:option>
					</c:forEach>
					</c:forEach>
   					<%-- <form:option value="NONE" label="--- Select ---"/>
   					<form:options items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName" />
   					<form:options items="${subCategoryList}" itemValue="subCategoryName"
			itemLabel="subCategoryName" /> --%>
				</form:select>
			 <%-- <form:select class="form-control" path="subCategory.subCategoryName"
			items="${subCategoryList}" itemValue="subCategoryName"
			itemLabel="subCategoryName"></form:select>  --%>
			</div></div>
				<div class="row">
			<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="productName">Select a Color</form:label>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
			<form:select class="form-control" path="color.colorName"
			items="${colorList}" itemValue="colorName"
			itemLabel="colorName"></form:select>
			</div></div>
				<div class="row">
			<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="productName">Select a Supplier</form:label>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
			<form:select class="form-control" path="supplier.supplierName"
			items="${supplierList}" itemValue="supplierName"
			itemLabel="supplierName"></form:select>
			</div></div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="quantity">Add a Quantity</form:label>
				</div>
				<div class="col-md-2 col-xs-2 col-lg-2 col-sm-2">
					<form:input type="number" path="quantity" class="form-control"
						placeholder="Select Quantity" />
				
				<form:errors class="error" path="quantity"></form:errors>
				</div></div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="rate">Item Rate</form:label>
				</div>
				<div class="col-md-2 col-xs-2 col-lg-2 col-sm-2">
					<form:input path="rate" class="form-control"
						placeholder="Select Quantity" />
				
				<form:errors class="error" path="rate"></form:errors>
				</div></div>
				<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="discount">Discount</form:label>
				</div>
				<div class="col-md-2 col-xs-2 col-lg-2 col-sm-2">
					<form:input path="discount" class="form-control"
						placeholder="Discount" />
				
				<form:errors class="error" path="rate"></form:errors>
				</div></div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="shippingCost">Shipping Cost</form:label>
				</div>
				<div class="col-md-2 col-xs-2 col-lg-2 col-sm-2">
					<form:input path="shippingCost" class="form-control"
						placeholder="Add shipping cost" />
				
				<form:errors class="error" path="shippingCost"></form:errors>
				</div></div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="image">Add a profile image</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input type="file" path="image" class="form-control"
						placeholder="Add shipping cost" />
				
				<form:errors class="error" path="image"></form:errors>
				</div></div>		
			<hr>
			<div class="row">
				<div class="col-md-12 col-xs-4 col-lg-12 col-sm-12">
					<div align="center">
						<c:if test="${!empty product.productName}">
						<input type="submit" value="Edit Product"
							class="btn btn-danger" /></c:if> 
							<c:if test="${empty product.productName}">
						<input type="submit" value="Create Product"
							class="btn btn-danger" /></c:if>
							 <input type="reset" value="Reset"
							class="btn btn-info" /> <a href="#productlist" class="btn btn-primary">Product
							List</a>
					</div>
				</div>
			</div>
		</form:form>
		<br>
		<div id="productlist" ng-app="TestApp" ng-controller="testController" style="display:none;">
				<hr class="colorgraph row">
		<h3>Product List </h3>
		<div class="row">
		<div class="col-md-1"><h4>Search</h4></div>
		<div class="col-md-4"><input type="text" class="input-sm form-control" ng-model="searchFilter" /></div></div>
		
		
				<div class="table-responsive">
				<table align="center" class="table table-hover table-condensed table-bordered table-nonfluid">
    <thead align="center" style="text-align:middle;">
      <tr align="center" style="background:#E3C0E1;text-align:center;align:center;"><th>Sr</th>
						<th>Product Name</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Discount</th>
						<th>Shipping Cost</th>
						<th>Total Payable</th>
						<th>Total Cost</th>
						<th>Preview</th>	
						<th>Manage</th>						
						</tr>
    </thead>
    <tbody>
    
      <tr ng-repeat="item in resultValue=(items | filter:searchFilter)">
        <td>{{$index + 1}}</td>
        <td>{{item.productName}}</td>
						<td>{{item.quantity}}</td>
						<td>{{item.rate}}</td>
						<td>{{item.discount}}</td>
						<td>{{item.shippingCost}}</td>
						<td>{{item.totalAmountPerPiece}}</td>
						<td>{{item.totalAmount}}</td>
						<td><img src="resources/images/{{item.productId}}.jpg" width="150px" height="120px"/></td>
						<td><a href="detail--{{item.productId}}" class="btn btn-primary btn-xs glyphicon glyphicon-info-sign">ADD INFO</a><a href="viewproduct--{{item.productId}}--product" class="btn btn-primary btn-xs glyphicon glyphicon-info-sign">VIEW</a> <a href="editProduct-{{item.productId}}" class="btn btn-info btn-xs glyphicon glyphicon-edit">EDIT</a> <a href="product/remove/{{item.productId}}" class="btn btn-danger btn-xs glyphicon glyphicon-remove">DELETE</a></td>
						
      </tr>
      
    </tbody>
    <tfoot>
    <tr>
     
      <td colspan="2">Total</td>
      <td><b style="text-align:center;"><u class="doubleUnderline">{{resultValue | sumOfValue:'quantity'}}</u></b> </td>
      <td><b style="text-align:center;"><u class="doubleUnderline">{{resultValue | sumOfValue:'rate'}}</u></b> </td>
      <td></td>
      <td><b style="text-align:center;"><u class="doubleUnderline">{{resultValue | sumOfValue:'shippingCost'}}</u></b> </td>
      
      <td><b style="text-align:center;"><u class="doubleUnderline">{{resultValue | sumOfValue:'totalAmountPerPiece'}}</u></b> </td>
      <td><b style="text-align:center;"><u class="doubleUnderline">{{resultValue | sumOfValue:'totalAmount'}}</u></b></td></tr>
    </tfoot>
  </table>
  
		
	</div></div></div></div>
	<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
	
<script src="resources/bootstrap-3.3.7-dist/js/angular-datatables.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
angular.module("TestApp", [])
.filter('sumOfValue', function () {
return function (data, key) {
    debugger;
    if (angular.isUndefined(data) && angular.isUndefined(key))
        return 0;        
    var sum = 0;
    
    angular.forEach(data,function(v,k){
        sum = sum + parseInt(v[key]);
    });        
    return sum;
}
}).filter('totalSumPriceQty', function () {
return function (data, key1, key2) {        
    if (angular.isUndefined(data) && angular.isUndefined(key1)  && angular.isUndefined(key2)) 
        return 0;
    
    var sum = 0;
    angular.forEach(data,function(v,k){
        sum = sum + (parseInt(v[key1]) * parseInt(v[key2]));
    });
    return sum;
}
}).controller("testController", function ($scope) {
$scope.items = ${productList}
});

</script>
<!-- <script>
angular.module('TestApp', ['TestApp.controllers','datatables']);
	
	angular.module('TestApp.controllers', []).controller('testController', function($scope,DTOptionsBuilder, DTColumnBuilder) {
		$scope.userList = ${productList}
		
		$scope.vm = {};
		
		$scope.vm.dtOptions = DTOptionsBuilder.newOptions()
		  .withOption('order', [0, 'asc']);
		
		$scope.totalPricePerItem = function(){
			var total = 0;
			for(count=0;count<$scope.userList.length;count++){
				total +=$scope.userList[count].totalAmountPerPiece;
			}
			return total;
		};
		$scope.totalPrice = function(){
			var total = 0;
			for(count=0;count<$scope.userList.length;count++){
				total +=$scope.userList[count].totalAmount;
			}
			return total;
		};  
		$scope.rate = function(){
			var total = 0;
			for(count=0;count<$scope.userList.length;count++){
				total +=$scope.userList[count].rate;
			}
			return total;
		};  
		$scope.quantity = function(){
			var total = 0;
			for(count=0;count<$scope.userList.length;count++){
				total +=$scope.userList[count].quantity;
			}
			return total;
		};
		$scope.shippingCost = function(){
			var total = 0;
			for(count=0;count<$scope.userList.length;count++){
				total +=$scope.userList[count].shippingCost;
			}
			return total;
		};  
		
		 });

</script> -->
<script>
$(document).ready(function(){
    $("a").click(function(){
        $("#productlist").toggle();
    });
});
</script>	
<script type="text/javascript">
$("#data").change(function(){
	   var item = $(this).val();        
	   $("#dataval").val(item);
	});
</script>
	</body>
</html>
	

