<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	
	<hr>

	
</body>
</html>