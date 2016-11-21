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
	<div class="container" style="width: 700px; border: 1px solid grey;">
		<h3>Manage Category</h3>
		<hr class="colorgraph">
		<form:form role="form" method="post" commandName="category" action="addcategory">
			<div class="row">
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<c:if test="${!empty category.categoryId}">
					<form:input class="form-control col-lg-6" path="categoryId" />
					</c:if>

				</div>
			</div>

			<div class="row">
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryName">Give a Category Name</form:label>
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="categoryName" class="form-control"
						placeholder="Add a description to your Category" />
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="categoryName"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="categoryDescription">Category Description</form:label>
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="categoryDescription" class="form-control"
						placeholder="Add a description to your Category" />
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="categoryDescription"></form:errors>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-12 col-xs-4 col-lg-4 col-sm-4">
					<div align="center">
						<input type="submit" value="Create Category"
							class="btn btn-danger" /> <input type="reset" value="Reset"
							class="btn btn-info" /> <a href="" class="btn btn-primary">Category
							List</a>
					</div>
				</div>
			</div>
		</form:form>
		<br>
	</div>

	
	
		<br>
	<div class="container" style="width: 700px; border: 1px solid grey;">
		<h3>Manage Category</h3>
		<hr class="colorgraph">
		<form:form role="form" method="post" commandName="subCategory" action="addsubcategory">
			<div class="row">
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<c:if test="${!empty subCategory.subCategoryId}">
					<form:input class="form-control col-lg-6" path="subCategoryId" />
					</c:if>

				</div>
			</div>

			<div class="row">
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="subCategoryName">Give a SubCategory Name</form:label>
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="subCategoryName" class="form-control"
						placeholder="Add a Name to your SubCategory" />
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="subCategoryName"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
					<form:label path="subCategoryDescription">Category Description</form:label>
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="subCategoryDescription" class="form-control"
						placeholder="Add a description to your Category" />
				</div>
				<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="subCategoryDescription"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-xs-4 col-lg-4 col-sm-4">
			<form:select path="category.categoryName"
			items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
			</div></div>
			<hr>
			<div class="row">
				<div class="col-md-12 col-xs-4 col-lg-4 col-sm-4">
					<div align="center">
						<input type="submit" value="Create Category"
							class="btn btn-danger" /> <input type="reset" value="Reset"
							class="btn btn-info" /> <a href="" class="btn btn-primary">Category
							List</a>
					</div>
				</div>
			</div>
		</form:form>
		<br>
	</div>

	
	 
	
	<h3>Manage Products</h3>
	<h3>Manage Color</h3>
	<h3>Manage Supplier</h3>
</body>
</html>