<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@include file="header.jsp"%>
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

.error {
	color: red;
}
</style>

</head>
<body>
	<br>
	<div class="container">
		<div class="col-md-8 col-xs-8 col-lg-8 col-sm-8"
			style="margin-left: 150px; border: 1px solid grey;">
			<h3>Add Product Detail</h3>
			<hr class="colorgraph">
			<form:form action="add--${productId}" commandName="productDetail"
				enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-6 col-xs-4 col-lg-4 col-sm-4">
						<c:if test="${!empty productDetail.productId}">
							<form:input type="hidden" class="form-control col-lg-6"
								path="productId" />
						</c:if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="style">Select Style</form:label>
					</div>
					<div class="col-md-3 col-xs-3 col-lg-3 col-sm-3">
						<form:select path="style" class="form-control">
							<form:option value="Casual Wear"></form:option>
							<form:option value="Party Wear"></form:option>
							<form:option value="Formal Wear"></form:option>
							<form:option value="Bridal Wear"></form:option>
							<form:option value="Traditional Wear"></form:option>
						</form:select>

						<form:errors class="error" path="style"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="salwarFabric">Select The Necessary Fabric</form:label>
					</div>
					<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
						<form:checkbox path="salwarFabric" value="Cotton" />
						Cotton
						<form:checkbox path="salwarFabric" value="santoon" />
						santoon

						<form:errors class="error" path="salwarFabric"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="washCare">Wash Care</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">
						<form:radiobutton path="washCare" value="Hand Wash" />
						Hand Wash
						<form:radiobutton path="washCare" value="Dry Clean" />
						Dry Clean
						<form:radiobutton path="washCare" value="Hand Wash" />
						Machine Wash

						<form:errors class="error" path="washCare"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="neckStyle">Neck Style</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="neckStyle" value="Round" name="neck"/>
						Round
						<form:radiobutton path="neckStyle" value="Boat Neck" name="neck" />
						Boat Neck
						<form:radiobutton path="neckStyle" value="U Neck" name="neck" />
						U Neck<br>
						<form:radiobutton path="neckStyle" value="Chinese Collar Neck" name="neck" />
						Chinese Collar Neck
						<form:radiobutton path="neckStyle" value="V Neck" name="neck" />
						V Neck

						<form:errors class="error" path="washCare"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="duppataType">Dupatta Work</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="duppataType" value="nazneen" />
						Nazneen
						<form:radiobutton path="duppataType" value="Dori Embroidered" />
						Dori Embroidered
						<form:radiobutton path="duppataType" value="Plain" />
						Plain<br>
						

						<form:errors class="error" path="duppataType"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="work">Work Style</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="work" value="Embossed" />
						Embossed
						<form:radiobutton path="work" value="Embroidered" />
						Embroidered
						<form:radiobutton path="work" value="Printed" />
						Printed


						<form:errors class="error" path="work"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="stitchedType">Stitched Type</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="stitchedType" value="Unstitched" />
						Unstitched
						<form:radiobutton path="stitchedType" value="Semi Stitched" />
						Semi Stitched
						<form:radiobutton path="stitchedType" value="Stitched" />
						Stitched


						<form:errors class="error" path="stitchedType"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="pyjamaType">Salwar Type</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="pyjamaType" value="Unstitched" />
						Cotton
						<form:radiobutton path="pyjamaType" value="Semi Stitched" />
						Silk Blend
						<form:radiobutton path="pyjamaType" value="Stitched" />
						santoon


						<form:errors class="error" path="stitchedType"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="sleeves">Salwar Type</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">

						<form:radiobutton path="sleeves" value="Full Sleeves" />
						Full Sleeves
						<form:radiobutton path="sleeves" value="Half Sleeves" />
						Half Sleeves
						<form:radiobutton path="sleeves" value="Round Sleeves" />
						Round Sleeves
						<form:radiobutton path="sleeves" value="Sleeveless" />
						Sleeveless

						<form:errors class="error" path="sleeves"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="style">Select Color</form:label>
					</div>
					<div class="col-md-3 col-xs-3 col-lg-3 col-sm-3">
						<form:select path="kurtaColor" class="form-control">
							<form:option value="Pink"></form:option>
							<form:option value="Blue"></form:option>
							<form:option value="Magenta"></form:option>
							<form:option value="White"></form:option>
							<form:option value="Black"></form:option>
							<form:option value="Grey"></form:option>
							<form:option value="Dark Blue"></form:option>
							<form:option value="Cyan"></form:option>
							<form:option value="Royal Blue"></form:option>
							<form:option value="Baby Pink"></form:option>
							<form:option value="Rust"></form:option>
							<form:option value="Maroon"></form:option>
							<form:option value="Red"></form:option>
							<form:option value="Brown"></form:option>
							<form:option value="Silver"></form:option>
							<form:option value="Light red"></form:option>
							<form:option value="Yellow"></form:option>
						</form:select>

						<form:errors class="error" path="style"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="occasion">Ocassion</form:label>
					</div>
					<div class="col-md-6 col-xs-6 col-lg-6 col-sm-4">
						<form:checkboxes items="${blogOptions}" path="occasion" />

						<form:errors class="error" path="occasion"></form:errors>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 col-xs-6 col-lg-4 col-sm-6">
						<form:label path="occasion">Add Product Images</form:label>
					</div>
					<div class="col-md-4 col-xs-6 col-lg-6 col-sm-4">
						<form:input path="img1" type="file" class="form-control" />
						<form:input path="img2" type="file" class="form-control" />
						<form:input path="img3" type="file" class="form-control" />
						<form:input path="img4" type="file" class="form-control" />

						<form:errors class="error" path="occasion"></form:errors>
					</div>
				</div>

				<hr>
				<div class="row">
					<div class="col-md-12 col-xs-4 col-lg-12 col-sm-12">
						<div align="center">
							<input type="submit" value="Add Product Detail"
								class="btn btn-danger" /> <input type="reset" value="Reset"
								class="btn btn-info" /> <a href="#productlist"
								class="btn btn-primary">Product List</a>
						</div>
					</div>
				</div>
				<br>
			</form:form>
		</div>
	</div>
</body>
</html>