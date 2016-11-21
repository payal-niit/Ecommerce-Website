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
</style>
<link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="resources/bootstrap-3.3.7-dist/js/jquery-3.1.0.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>	
		<br>
		<div class="container">
	<div class="col-md-8 col-xs-8 col-lg-8 col-sm-8" style="margin-left: 150px; text-align:center;border: 1px solid grey;">
		<h3>Manage SubCategory</h3>
		<hr class="colorgraph">
		<form:form role="form" method="post" commandName="subCategory" action="addsubcategory">
			<div class="row">
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<c:if test="${!empty subCategory.subCategoryId}">
					<form:input type="hidden" class="form-control col-lg-6" path="subCategoryId" />
					</c:if>

				</div>
			</div>

			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="subCategoryName">Give a SubCategory Name</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					<form:input path="subCategoryName" class="form-control"
						placeholder="Add a Name to your SubCategory" />
				
				<form:errors class="error" path="subCategoryName"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="subCategoryDescription">Category Description</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					<form:input path="subCategoryDescription" class="form-control"
						placeholder="Add a description to your Category" />
				
				<form:errors class="error" path="subCategoryDescription"></form:errors>
				</div>
			</div>
			<div class="row">
			<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="subCategoryDescription">Select a Category</form:label>
				</div>
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
			<form:select class="form-control" path="category.categoryName"
			items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
			</div></div>
			<hr>
			<div class="row">
				<div class="col-md-12 col-xs-4 col-lg-12 col-sm-12">
					<div align="center">
						<input type="submit" value="Create SubCategory"
							class="btn btn-danger" /> <input type="reset" value="Reset"
							class="btn btn-info" /> <a href="#subcategoryEdit" class="btn btn-primary">SubCategory
							List</a>
					</div>
				</div>
			</div>
		</form:form>
		<br>
		<div id="subcategoryEdit" ng-app="TestApp" ng-controller="testController" style="display:none;">
				<hr class="colorgraph">
		<h3>SubCategory List</h3>
		
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
						<td>{{group.subCategoryName}}</td>
						<td>{{group.subCategoryDescription}}</td>
						<td><a href="editSubCategory-{{group.subCategoryId}}" class="btn btn-primary btn-xs glyphicon glyphicon-info-sign">VIEW</a> <a href="editSubCategory-{{group.subCategoryId}}" class="btn btn-info btn-xs glyphicon glyphicon-edit">EDIT</a> <a href="subCategory/remove/{{group.subCategoryId}}" class="btn btn-danger btn-xs glyphicon glyphicon-remove">DELETE</a></td>
						
      </tr>
    </tbody>
  </table></div>
		
	</div></div></div>
	<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
	
<script src="resources/bootstrap-3.3.7-dist/js/angular-datatables.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/jquery.dataTables.min.js"></script>
<script>
angular.module('TestApp', ['TestApp.controllers','datatables']);
	
	angular.module('TestApp.controllers', []).controller('testController', function($scope,DTOptionsBuilder, DTColumnBuilder) {
		$scope.userList = ${subCategoryList}
		  
		$scope.vm = {};

		$scope.vm.dtOptions = DTOptionsBuilder.newOptions()
		  .withOption('order', [0, 'asc']);
		 });

</script>
<script>
$(document).ready(function(){
    $("a").click(function(){
        $("#subcategoryEdit").toggle();
    });
});
</script>	
	</body>
</html>
	

