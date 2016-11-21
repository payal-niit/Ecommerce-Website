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
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
#myModalCategory {
    
right:60%;
}
#myModalCategory .modal-dialog  {width:400px;} 
#myModalCategorylist {

left:35%;
}
}
</style>

</head>
<body>


<form:form role="form" commandName="category" action="add/category">
					<div class="row">					
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input type="hidden" path="categoryId" class="form-control" placeholder="Add a title to your Category" />
						
						</div></div>
					
					<div class="row">
					<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryName">Category Name</form:label></div>
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input path="categoryName" class="form-control" placeholder="Add a title to your Category" />
						</div></div>
						<div class="row">
					<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryDescription">Category Description</form:label></div>
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input path="categoryDescription" class="form-control" placeholder="Add a description to your Category"/>
						</div></div>
						<div class="row">
					<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<div align="center">
						<input type="submit" value="Create Category" class="btn btn-danger" />
						<input type="reset" value="Reset" class="btn btn-info" />
						<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalCategorylist" data-dismiss="modal">Category List</button>
						</div></div></div>
					</form:form></div>

	
	
	
<h3>
	
	
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalCategory">Manage Category</button>
		|
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalSubCategory">Manage SubCategory</button>
				|
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalSupplier">Manage Supplier</button>
				|
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalProduct">Manage Product</button>
			</h3>
				
	<div class="modal fade" id="myModalCategory" role="dialog">
		<div class="modal-dialog modal-xs">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 style="text-align:center;" class="modal-title">Create Category</h4>
						<hr class="colorgraph">
				</div>
				<div class="modal-body">
					<form:form role="form" commandName="category" action="add/category">
					<div class="row">					
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input type="hidden" disabled="true" path="categoryId" class="form-control" placeholder="Add a title to your Category" />
						</div></div>
					
					<div class="row">
					<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryName">Category Name</form:label></div>
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input path="categoryName" class="form-control" placeholder="Add a title to your Category" />
						</div></div>
						<div class="row">
					<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryDescription">Category Description</form:label></div>
						<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<form:input path="categoryDescription" class="form-control" placeholder="Add a description to your Category"/>
						</div></div>
						<div class="row">
					<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<div align="center">
						<input type="submit" value="Create Category" class="btn btn-danger" />
						<input type="reset" value="Reset" class="btn btn-info" />
						<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModalCategorylist" data-dismiss="modal">Category List</button>
						</div></div></div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
<!-- Category list -->

<div class="modal fade" id="myModalCategorylist" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 style="text-align:center;" class="modal-title">Category List</h4>
						<hr class="colorgraph">
				</div>
				<div ng-app="TestApp" ng-controller="testController" class="modal-body">
				<div class="table-responsive">
				<table class="table table-hover table-condensed table-bordered table-nonfluid" datatable="ng" dt-options="vm.dtOptions">
    <thead>
      <tr><th>Sr</th><th>Category ID</th>
						<th>Category Name</th>
						<th>Category description</th>
						<th>Manage</th>						
						</tr>
    </thead>
    <tbody>
      <tr ng-repeat="group in userList">
        <td>{{$index + 1}}</td>
        <td>{{group.categoryId}}</td>
						<td>{{group.categoryName}}</td>
						<td>{{group.categoryDescription}}</td>
						<td><a href="categories-{{group.categoryId}}" class="btn btn-info btn-lg">Edit</a>| <a href="category/remove/{{group.categoryId}}">Delete</a></td>
						
      </tr>
    </tbody>
  </table></div>
				</div></div></div></div>
	<!-- Manage SubCategories -->
	<div class="modal fade" id="myModalSubCategory" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Create SubCategory</h4>
				</div>
				<div class="modal-body">
					<form:form commandName="subCategory" action="add/subcategory">
		<form:input path="subCategoryName" />
		<form:input path="subCategoryDescription" />
		<form:select path="category.categoryName"
			items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
	
	<input type="submit" value="Create SubCategory" />
	<input type="reset" value="Reset" />
	</form:form>
				</div>
			</div>
		</div>
	</div>
	
		<!-- Manage SubCategories -->
	<div class="modal fade" id="myModalSupplier" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Create Supplier</h4>
				</div>
				<div class="modal-body">
					<form:form commandName="supplier" action="add/supplier">
<form:input path="supplierName" />
<form:input path="aboutSupplier" />
<form:input path="companyName" />
<form:radiobutton path="codAvailable" value="true" /> Yes
<form:radiobutton path="codAvailable" value="false" /> No
<input type="submit" value="Create Supplier"/>
<input type="reset" value="Reset"/>
</form:form>
				</div>
			</div>
		</div>
	</div>
	
		<!-- Manage SubCategories -->
	<div class="modal fade" id="myModalProduct" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Create Product</h4>
				</div>
				<div class="modal-body">
					<form:form commandName="product" action="add/product" enctype="multipart/form-data">
		<form:input path="productName" />
		
		<form:select path="category.categoryName"
			items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
			
		<form:select path="subCategory.subCategoryName"
			items="${subCategoryList}" itemValue="subCategoryName"
			itemLabel="subCategoryName"></form:select>
			
		<form:select path="color.colorName"
			items="${colorList}" itemValue="colorName"
			itemLabel="colorName"></form:select>
			
		<form:select path="supplier.supplierName"
			items="${supplierList}" itemValue="supplierName"
			itemLabel="supplierName"></form:select>
			
		<form:input path="rate" />
		<form:input path="quantity" />
		<form:input path="shippingCost" />
		<form:input path="discount" />
		<form:input path="image" type="file" />
		
	
	<input type="submit" value="Create SubCategory" />
	<input type="reset" value="Reset" />
	</form:form>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
	
<script src="resources/bootstrap-3.3.7-dist/js/angular-datatables.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/jquery.dataTables.min.js"></script>
<script>
angular.module('TestApp', ['TestApp.controllers','datatables']);
	
	angular.module('TestApp.controllers', []).controller('testController', function($scope,DTOptionsBuilder, DTColumnBuilder) {
		$scope.userList = ${category_list}
		  
		$scope.vm = {};

		$scope.vm.dtOptions = DTOptionsBuilder.newOptions()
		  .withOption('order', [0, 'asc']);
		 });

</script>
<script>
$(document).ready(function(){
    $("a").click(function(){
        $("#categoryEdit").toggle();
    });
});
</script>	
</body>
</html>