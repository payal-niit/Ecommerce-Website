<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="resources/font-awesome-4.6.3/css/font-awesome.min.css" />
<link rel="stylesheet" href="resources/font-awesome-4.6.3/css/animate.min.css" />
<link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/navbar.css" />
<script src="resources/bootstrap-3.3.7-dist/js/jquery-3.1.0.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body> 
<div class="">
 <nav class="navbar navbar-custom">
      
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            
       
          <a class="navbar-brand" href="index">Brand</a>
         
          
        </div>
                <div class="collapse navbar-collapse" id="navbar-collapse-3">
        <ul class="nav navbar-nav">
        
            <li><a href="index">Home</a></li>
            <li><a href="#">About</a></li>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
      	<li>
      	<a style="text-transform: uppercase;">Welcome: ${pageContext.request.userPrincipal.name}</a></li>     
                       </c:if>
            </ul>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
          <ul class="nav navbar-nav navbar-right">
        
                   
            <li><a href="register">Register</a></li>
              <c:if test="${pageContext.request.userPrincipal.name == null}">
            <li><a href="loginpage">Login</a></li></c:if>
             <c:if test="${pageContext.request.userPrincipal.name != null}">
            <li><a href="perform_logout">Logout</a></li></c:if>
            <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">User <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">My Profile <span class=""></span></a></li>
            <li><a href="#">My Orders <span class=""></span></a></li>
            <li><a href="#">My Wishlist <span class=""></span></a></li>        
          </ul>
        </li>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="false" aria-expanded="true">Admin <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>           
          </ul>
        </li>
        </sec:authorize>
          </ul>
          
        </div><!-- /.navbar-collapse -->
      
      
      <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		
	</div>
	</nav>
	<nav class="navbar navbar-custom">
	<div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
		<c:forEach items="${categoryList}" var="category">
			<li class="dropdown mega-dropdown">
				<a href="productdisplay?search=${category.categoryName}" class="dropdown-toggle" data-toggle="dropdown">${category.categoryName} <span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					<li class="col-sm-3">
						<ul>
							<a href="productdisplay?search=${category.categoryName}" target="_blank"><li class="dropdown-header">${category.categoryName}</li>  </a>                          
                            <div id="menCollection" class="carousel slide" data-ride="carousel">
                              <div class="carousel-inner">
                              <c:forEach items="${category.product}" var="product">
                                <div class="item active">
                                    <a href="viewproduct--${product.productId}--product"><img src="resources/images/${product.productId}.jpg" class="img-responsive" alt="product 1"></a>
                                    <h4><small>${product.productName}</small></h4>                                        
                                    <button class="btn btn-primary" type="button">${product.totalAmountPerPiece}/- </button> <a href="addwish-${product.productId}?userId=1" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</a>       
                                </div><!-- End Item -->
                                <div class="item">
                                    <a href="#"><img src="resources/images/${product.productId}.jpg" class="img-responsive" alt="product 3"></a>
                                    <h4><small>${product.productName}</small></h4>                                        
                                    <button class="btn btn-primary" type="button">${product.totalAmountPerPiece}/-</button> <a href="addwish-${product.productId}?userId=1" class="btn btn-default" type="button"><span class="glyphicon glyphicon-heart"></span> Add to Wishlist</a>      
                                </div><!-- End Item -->  
                                   
                                </c:forEach>                           
                              </div><!-- End Carousel Inner -->
                              <!-- Controls -->
                              <a class="left carousel-control" href="#menCollection" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#menCollection" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div><!-- /.carousel -->
                            <li class="divider"></li>
                            <li><a href="#">View all Collection <span class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
						</ul>
					</li>
					<c:forEach items="${category.subCategory}" var="subCategory">
					<li class="col-sm-2">
						<ul>
						
							<a ng-model="{{searchKeyword | limitTo:letterLimit}}" href="productdisplay?search=${subCategory.subCategoryName}"><li class="dropdown-header">${subCategory.subCategoryName}</li></a>
							<c:forEach items="${subCategory.product}" var="product">
							<li><a href="buynow-${product.productId}?userId=1">${product.productName}</a></li>
                            </c:forEach>
							
						</ul>
					</li>
					</c:forEach>
					
					
				</ul>				
			</li>           
           </c:forEach> 
		</ul>
        
      
	</div><!-- /.nav-collapse -->
      </nav>
      
   </div>   
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,false).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,false).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
});
</script>      
<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>      
      
      
      
      
 <%-- <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
			
			<li class="dropdown menu-large"">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Product Listing <b class="caret"></b> </a>
                  <ul class="dropdown-menu megamenu row">
                    <li>
        <div class="col-sm-6 col-md-3">
          <a href="#" class="thumbnail">
			<img src="http://placehold.it/150x120" />
          </a>
        </div>
        <div class="col-sm-6 col-md-3">
		<a href="#" class="thumbnail">
			<img src="http://placehold.it/150x120" />
          </a>
        </div>
        <div class="col-sm-6 col-md-3">
		<a href="#" class="thumbnail">
			<img src="http://placehold.it/150x120" />
          </a>
        </div>
        <div class="col-sm-6 col-md-3">
         <a href="#" class="thumbnail">
			<img src="http://placehold.it/150x120" />
          </a>
	    </div>
					</li>
                  </ul>
            </li>
			<c:forEach items="${categoryList}" var="category">
			<li class="dropdown menu-large" style="display:inline;">
				<a href="productlist?=${category.categoryName}" class="dropdown-toggle" data-toggle="dropdown">${category.categoryName} <b class="caret"></b></a>				
				<ul class="dropdown-menu megamenu row">
					<li style="display:inline;"class="col-sm-3">
						<ul style="display:inline;">
						<c:forEach items="${category.subCategory}" var="subCategory">
							<li style="display:inline;" class="dropdown-header">${subCategory.subCategoryName}</li>
							<c:forEach items="${subCategory.product}" var="pr">
							<li><a href="#">${pr.productName}</a></li>
                            </c:forEach>							
							</c:forEach>
						</ul>
					</li>
					
					
				</ul>

			</li>
			</c:forEach>
		</ul>
		</div>
      
 

    </nav><!-- /.navbar -->
    </div>
    <script>
    $(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
});
    </script> --%>
  
    
</body>
</html>