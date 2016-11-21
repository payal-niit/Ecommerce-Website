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

<link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="resources/bootstrap-3.3.7-dist/js/jquery-3.1.0.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<br>
	<div class="container">
	<div class="col-md-10 col-xs-8 col-lg-8 col-sm-8" style="margin-left: 100px; text-align:center;border: 1px solid grey;">
		<h3>Manage Category</h3>
		<hr class="colorgraph">
		<form:form role="form" method="post" commandName="category" action="addcategory">
			<div class="row">
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<c:if test="${!empty category.categoryId}">
					<form:input type="hidden" class="form-control col-lg-6" path="categoryId" />
					</c:if>

				</div>
			</div>

			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="categoryName">Give a Category Name</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					<form:input path="categoryName" class="form-control"
						placeholder="Add a description to your Category" />
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="categoryName"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
					<form:label path="categoryDescription">Category Description</form:label>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					<form:input path="categoryDescription" class="form-control"
						placeholder="Add a description to your Category" />
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="categoryDescription"></form:errors>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
					<div align="center">
					<c:if test="${!empty category.categoryName}">
						<input type="submit" value="Edit Category"
							class="btn btn-danger" /></c:if> 
							<c:if test="${empty category.categoryName}">
						<input type="submit" value="Create Category"
							class="btn btn-danger" /></c:if>
							<input type="reset" value="Reset"
							class="btn btn-info" /> <a href="#categoryEdit" class="btn btn-primary">Category
							List</a>
					</div>
				</div>
			</div>
		</form:form>
		<br>
		<div id="categoryEdit" ng-app="TestApp" ng-controller="testController" style="display:none;">
				<hr class="colorgraph">
		<h3>Category List</h3>
		
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
						<td><a href="editCategory-{{group.categoryId}}" class="btn btn-primary btn-xs glyphicon glyphicon-info-sign">VIEW</a>
						 <a href="editCategory-{{group.categoryId}}" class="btn btn-info btn-xs glyphicon glyphicon-edit">EDIT</a>
						  <a href="category/remove/{{group.categoryId}}" class="btn btn-danger btn-xs glyphicon glyphicon-remove">DELETE</a>
						  <span>${categoryId}</span></td>
						
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
<script type="text/javascript">
function showalert() {
	alert("Category cannot be deleted as Subcategory exists for the same");
}
</script>
	</body>
</html>