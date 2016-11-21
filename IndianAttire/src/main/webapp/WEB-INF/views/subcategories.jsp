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
	<form:form commandName="subCategory" action="add/subcategory">
		<form:input path="subCategoryName" />
		<form:input path="subCategoryDescription" />
		<form:select path="category.categoryName"
			items="${categoryList}" itemValue="categoryName"
			itemLabel="categoryName"></form:select>
	
	<input type="submit" value="Create SubCategory" />
	<input type="reset" value="Reset" />
	</form:form>
</body>
</html>