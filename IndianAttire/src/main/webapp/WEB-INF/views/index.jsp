<%@include file="header.jsp" %>

<div ng-app="myApp" ng-controller="getData">
<div class="row">
	<div class="col-md-3 nopadding">
	<div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span> Indian Attire</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">About</a>
                                    </td>
                                </tr>
                                <tr>
                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <td>
                                        <span class="glyphicon glyphicon-log-in text-success"></span><a href="#"> Login</a>
                                    </td>
                                    </c:if>
                                </tr>
                                <tr>
                                 <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <td>
                                        <span class="glyphicon glyphicon-log-out text-info"></span><a href="http://www.jquery2dotnet.com"> Logout</a>
                                    </td>
                                    </c:if>
                                </tr>
                                <tr>
                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <td>
                                        <span class="glyphicon glyphicon-user text-success"></span><a href="http://www.jquery2dotnet.com">Register</a>
                                        <span class="badge">42</span>
                                    </td>
                                    </c:if>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <c:forEach items="${categoryList}" var="category">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#${category.categoryId}"><span class="glyphicon glyphicon-th">
                            </span> ${category.categoryName}</a>
                        </h4>
                    </div>
                    <div id="${category.categoryId}" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                            <c:forEach items="${category.subCategory}" var="subCategory">
                                <tr>
                                
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">${subCategory.subCategoryName}</a> <span class="label label-success">$ 320</span>
                                    </td>
                                </tr>
                                </c:forEach>
                                
                            </table>
                        </div>
                    </div>
                </div>
               </c:forEach>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                            </span>Account</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Change Password</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Import/Export</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                            Delete Account</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                            </span>Reports</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
 
	</div>
	<div class="col-md-9 nopadding">
	<div class="row">
	<div class="col-md-12 nopadding">
	<div class="container search_autocomplete">
	<br>
		<form>
			<div class="form-group col-md-8">
				<input ng-model="name" id="w-input-search" type="text"
					class="form-control w-input-search" placeholder="Search" />
			</div>
			<div class="col-md-2">
				<a href="productdisplay?search={{name | limitTo:letterLimit}}"
					class="btn btn-danger glyphicon glyphicon-search"></a>
			</div>
		</form>
	</div>
	</div>
	<div class="row">

	<div class="col-md-12 nopadding">
	 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/1.jpg" alt="Chania" width="460" height="100">
      </div>

      <div class="item">
        <img src="resources/images/2.jpg" alt="Chania" width="460" height="100">
        
      </div>
    
      <div class="item">
        <img src="resources/images/3.jpg" alt="Flower" width="460" height="100">
      </div>

      <div class="item">
        <img src="resources/images/4.JPG" alt="Flower" width="460" height="100">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div>
  </div></div></div></div>
  <div>
  <h3 class="latest_products">Latest Products</h3>
  <div class="container">
  
  <div class="row">
  <div  ng-repeat="p in productdata" class="col-lg-2 col-md-2 col-sm-3 col-xs-6 nopadding">		
			
            <article class="col-item">
        		<div class="photo">
        			<div class="options">
        				<a href="addwish-{{p.productId}}?userId=1" class="btn btn-default" type="submit" data-toggle="tooltip" data-placement="top" title="Add to wish list">
        					<i class="fa fa-heart"></i>
        				</a>
        				<a href="buynow-{{p.productId}}?userId=1" class="btn btn-default" type="submit" data-toggle="tooltip" data-placement="top" title="Buy now">
        					<i class="fa fa-location-arrow"></i>
        				</a>
        			</div>
        			<div class="options-cart">
        				<a class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Add to cart">
        					<span class="fa fa-shopping-cart"></span>
        				</a>
        			</div>
        			  
  <a href="#" data-toggle="modal"
			data-target="#{{p.productId}}"> <img src="resources/images/{{p.productId}}.jpg" class="img-responsive" alt="Product Image" /> </a>
        		</div>
        		<div class="info">
        			<div class="row">
        			<a href="viewproduct--{{p.productId}}--product">
        				<div class="price-details col-md-6" style="min-height:65px; max-height: 65px;">
        					<p class="details">
        						{{p.productName}}
        					</p>
        					<h1><a href="productdisplay?search={{p.categoryName | limitTo:letterLimit}}">{{p.categoryName}}</a></h1>
        					<span class="price-new">$110.00</span>
        				</div></a>
        			</div>
        		</div>
        	</article>
        	
        	<div class="modal fade" id="{{p.productId}}" role="dialog">
		<div class="modal-dialog modal-xs">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 style="text-align:center;" class="modal-title">{{p.productName}}</h4>
						<hr class="colorgraph">
						<img src="resources/images/{{p.productId}}.jpg" src="500" height="650" />
				</div>
				<div class="modal-body"></div></div></div></div>
        	
            <p class="text-center">${wishlist}</p>
        </div></div></div></div>
        
<div>
<h3 class="special_products">Special Products</h3>
 <marquee style="  scrollamount="6" scrolldelay="90" direction="left" onmouseover="this.stop()" onmouseout="this.start()">
<a target="_blank" href="viewproduct--">
<ul class="list-inline list-unstyled r">
<li class="productbox" ng-repeat="p in productdata">
<a target="_blank" href="viewproduct--{{p.productId}}--product">
    <img src="resources/images/{{p.productId}}.jpg" class="img-responsive">
    <div class="producttitle"> {{p.productName}}</div> </a>
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/B.-VEGA-GUIDED-WAVE-RADARS.jpg" class="img-responsive">
    <div class="producttitle"> VEGA GUIDED WAVE RADARS</div> 
</li> 
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/C.-VEGA-ULTRASONIC.jpg" class="img-responsive">
    <div class="producttitle"> VEGA ULTRASONIC</div> 
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/D.-VEGA-CAPACITIVE.jpg" class="img-responsive">
    <div class="producttitle"> VEGA CAPACITIVE</div> 
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/E.-VEGA-VIBRATION.jpg" class="img-responsive">
    <div class="producttitle"> VEGA VIBRATION</div> 
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/F.-VEGA-CONDUCTIVE.jpg" class="img-responsive">
    <div class="producttitle"> VEGA CONDUCTIVE</div> 
</li>
<li class=" productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/G.-VEGA-RADIATION-BASED.jpg" class="img-responsive">
    <div class="producttitle"> VEGA RADIATION BASED</div> 
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/H.-VEGA-PRESSURE-SERIES.jpg" class="img-responsive">
    <div class="producttitle"> VEGA PRESSURE SERIES</div> 
</li>
<li class="productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/I.-VEGA-HYDROSTATIC.jpg" class="img-responsive">
    <div class="producttitle"> VEGA HYDROSTATIC</div> 
</li>
<li class=" productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/J.-VEGA-DIFFERENTIAL-PRESSURE.jpg" class="img-responsive">
    <div class="producttitle">VEGA-DIFFERENTIAL-PRESSURE</div> 
</li>
<li class=" productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/K.-VEGA-SIGNAL-CONDITIONING-INSTRUMENTS.png" class="img-responsive">
    <div class="producttitle"> VEGA SIGNAL CONDITIONING INSTRUMENTS</div> 
</li>
<li class=" productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/L.-VEGA-DISPLAY-INSTRUMENTS.jpg" class="img-responsive">
    <div class="producttitle"> VEGA DISPLAY INSTRUMENTS </div> 
</li>
<li class=" productbox">
    <img src="http://noorstar.pk/wp-content/uploads/2015/11/M.-VEGA-ISOLATION-AND-PROTECTION-DEVICES.jpg" class="img-responsive">
    <div class="producttitle"> VEGA ISOLATION AND PROTECTION DEVICES </div> 
</li> 
</ul></a><br>
</marquee>

	
	
	</div>
</div>
<script type="text/javascript" src="resources/js/jquery.autocomplete.min.js"></script>
	
    <script>
  $(document).ready(function() {

	$('.w-input-search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "display",
		
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.name, 
						data: item.id };
		      //return { value: item.productName, data: item.id };
		   })

		 };

            }

	 });
	
	

  });
  </script>
<script>
var myApp = angular.module('myApp', []);
	myApp.controller('getData', function($scope, $http, $location) {
		
		$scope.letterLimit = 3;
		
		$scope.productdata = ${top5};
		
	});
</script>
<script>
/*Tooltip*/
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>