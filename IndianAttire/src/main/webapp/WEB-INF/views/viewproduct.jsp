<%@ include file="/WEB-INF/views/header.jsp"%>
<html>
<head>
<meta charset="UTF-8">                                   
<link rel="stylesheet" href="resources/css/blueimp-gallery.min.css">
<link rel="stylesheet" href="resources/css/image-gallery.css">
<link rel="stylesheet" href="resources/css/lightslider.min.css">
<style type="text/css">
#links a img {width:120px;height:120px;}
#mainImage{
    width:350px;
    height:480px;
    -webkit-transition:all 0.5s linear;
    transition:all 0.5s linear;
}
ul{
    list-style-type:none;
    margin:0;
    padding:0;
}
li{
    list-style-type:none;
    float:left;
}
.img-container img {
    width:100px;
    height:100px;
}


</style>
</head>
<script src="resources/js/blueimp-gallery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-sanitize.js"></script>	
	<body>
<div ng-app="myApp" ng-controller="getData" class="container">

	
		<div class="panel-title text-center">
			<h1 class="title">{{productdata.productName}}
			</h1>
			<hr />
		</div>
<div class="row">	
<div class="col-md-6 col-lg-6" style="background:1px solid black;">
<div class="row">
<div class="col-md-3 col-lg-3" style="background:1px solid black;">
<div id="blueimp-gallery" class="blueimp-gallery" style="margin-right: 0px;">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title"></h3>
    <a class="prev col-xs"><img src="resources/images/Previous.png" style="margin-top: 0px;" width="41" height="41"></a>
    <a class="next"><img src="resources/images/Next-icon.png" style="margin-top: 0px;" width="41" height="41"></a>
    <a class="close"><img src="resources/images/close-window-xxl.png" width="21" height="21"></a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
    <div class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-hidden="true">×</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body next"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                        Previous
                    </button>
                    <button type="button" class="btn btn-primary next">
                        Next
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<ul id="links">
    <li>
        <div class="img-container">
        <a href="resources/productdetail/{{productdata.productId}}-1.jpg" data-gallery>
        <img src="resources/productdetail/{{productdata.productId}}-1.jpg"></a></div>
    </li>
    <li>
        <div class="img-container">
        <a href="resources/productdetail/{{productdata.productId}}-2.jpg" data-gallery>
        <img src="resources/productdetail/{{productdata.productId}}-2.jpg"></a></div>
    </li>
    <li>
        <div class="img-container">
        <a href="resources/productdetail/{{productdata.productId}}-3.jpg" data-gallery>
        <img src="resources/productdetail/{{productdata.productId}}-3.jpg"></a></div>
    </li>
    <li>
        <div class="img-container">
        <a href="resources/productdetail/{{productdata.productId}}-4.jpg" data-gallery>
        <img src="resources/productdetail/{{productdata.productId}}-4.jpg">
        </a>
        </div>
    </li>
</ul>
</div>	
<div class="col-md-9 col-lg-9" style="background:1px solid black;">
<div id="mainDiv"><div class="main-img-container">
<img id='mainImage' src="resources/productdetail/{{productdata.productId}}-1.jpg" alt="{{productdata.productName}}" />
</div>
</div></div>
</div>



		
<%-- 		<!-- products grid -->
			<div class="col-md-3 col-lg-3" style="background:1px solid black;">
			
			<div id="blueimp-gallery" class="blueimp-gallery" style="margin-right: 0px;">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title"></h3>
    <a class="prev col-xs"><img src="resources/images/Previous.png" style="margin-top: 0px;" width="41" height="41"></a>
    <a class="next"><img src="resources/images/Next-icon.png" style="margin-top: 0px;" width="41" height="41"></a>
    <a class="close"><img src="resources/images/close-window-xxl.png" width="21" height="21"></a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
    <div class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-hidden="true">×</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body next"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                        Previous
                    </button>
                    <button type="button" class="btn btn-primary next">
                        Next
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
                                
                          
<div id="links">
    <a href="resources/productdetail/{{productdata.productId}}-1.jpg" data-gallery>
        <img id="zoom_01" src="resources/productdetail/{{productdata.productId}}-1.jpg" alt="{{productdata.productName}}" data-zoom-image="resources/productdetail/${p.productId}-1.jpg">
    </a>
    
    
    <a href="resources/productdetail/{{productdata.productId}}-2.jpg" data-gallery>
        <img id="zoom_02" src="resources/productdetail/{{productdata.productId}}-2.jpg" alt="{{productdata.productName}}" data-zoom-image="resources/productdetail/${p.productId}-2.jpg">
    </a>
    </div>
    <div id="links">
    <a href="resources/productdetail/{{productdata.productId}}-3.jpg" data-gallery>
        <img id="zoom_03" src="resources/productdetail/{{productdata.productId}}-3.jpg" alt="{{productdata.productName}}" data-zoom-image="resources/productdetail/${p.productId}-3.jpg">
    </a>
    


    <a href="resources/productdetail/{{productdata.productId}}-4.jpg" data-gallery>
        <img id="zoom_04" src="resources/productdetail/{{productdata.productId}}-4.jpg" alt="{{productdata.productName}}" data-zoom-image="resources/productdetail/${p.productId}-4.jpg">
    </a>
    
</div> 
				<!-- <img class="parentimage"
					src="resources/images/{{productdata.productId}}.jpg"> -->
					

	 --%>
</div>
<div class="col-md-6 col-lg-6" style="background:1px;">
				<div class="panel panel-danger">
					<div class="panel-body">
						<p>
							<span class="h6 text-Capitalize">SubCategory: <b><a
									href="productdisplay?search={{productdata.subCategoryName | limitTo:letterLimit}}">{{productdata.subCategoryName}}</a></b></span>
						</p>
						<p>
							<span class="h6 text-Capitalize">Category: <b><a
									href="productdisplay?search={{productdata.categoryName | limitTo:letterLimit}}">{{productdata.categoryName}}</a></b></span>
						</p>
						<p>
							<span class="h6 text-Capitalize">Stock Available: <b>{{productdata.quantity}}</b></span>
						</p>
						<p>
							<span class="h6 text-Capitalize">Price: <b>{{productdata.rate}}</b></span>
						</p>

						<p>
							Ocassion Type: <b><a
								href="productdisplay?search={{productdata.occasion | limitTo:letterLimit}}"><span
									class="h5" ng-bind-html="productdata.occasion"></span></a></b>
						</p>
						<p>
							Neck Type: <b><a
								href="productdisplay?search={{productdata.style | limitTo:letterLimit}}"><span
									class="h5" ng-bind-html="productdata.neckStyle"></span></a></b>
						</p>
					</div>
				</div>
				<div>
				<a href="" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Add to cart"><span class="glyphicon glyphicon-shopping-cart"></span> Add</a>
				<a href="" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Buy Now"><span class="glyphicon glyphicon-ok-sign"></span> Buy</a>
				<a href="addwish-{{p.productId}}?userId=1" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="glyphicon glyphicon-heart"></span> Wishlist</a>
				
				</div>
				<div>
				<br><br><br><br><br>
				<p>
							Number of people viewed this page: <b> ${cookie.hitCounter.value}</b>
						</p>
				
				</div>
			</div>
</div></div>
<script src='resources/js/jquery.elevatezoom.js'></script>
	<script src="resources/js/jquery.elevateZoom-3.0.8.min.js"></script>
	<script src='resources/js/lightslider.min.js'></script>
<script>
var myApp = angular.module('myApp', ['ngSanitize']);
	myApp.controller('getData', function($scope, $http, $location) {
		$scope.searchKeyword = location.search.substr(15);
		$scope.letterLimit = 3;
		
		$scope.productdata = ${product};
		
	});
</script>
<script>
    $('#zoom_01').elevateZoom({
    	
    	cursor: "crosshair",
    	zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 }); 
    
$('#zoom_02').elevateZoom({
    	
    	cursor: "crosshair",
    	zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 }); 
		
$('#zoom_03').elevateZoom({
	
	cursor: "crosshair",
	zoomWindowFadeIn: 500,
	zoomWindowFadeOut: 500,
	lensFadeIn: 500,
	lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 }); 
	
$('#zoom_04').elevateZoom({
	
	cursor: "crosshair",
	zoomWindowFadeIn: 500,
	zoomWindowFadeOut: 500,
	lensFadeIn: 500,
	lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 }); 
</script>
<script>
var mainImage = $("#mainImage");
$(".img-container img").hover(function(){
   var src = $(this).attr("src");
    $("#mainImage").attr("src",src);
});

mainImage.on("click",function(){
    $(this).css("transform","scale(2)");
});
$('#mainImage').elevateZoom({
	
	cursor: "crosshair",
	zoomWindowFadeIn: 500,
	zoomWindowFadeOut: 500,
	lensFadeIn: 500,
	lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 });
</script>
<script>
/*Tooltip*/
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>
</body>
</html>