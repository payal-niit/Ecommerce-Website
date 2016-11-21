<%@include file="header.jsp"%>
<div ng-app="myApp" ng-controller="getData">

<div  class="row">

<div class="col-md-4 col-sm-4">
</div>
<div class="col-md-2 col-sm-2">
<label for="search" class="control-label">Search Products</label></div>
<form>
							<div class="col-md-4 col-sm-4 input-group ">
								<span class="input-group-addon cols-sm-4"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							    <input type="text" ng-model="searchKeyword" class="form-control cols-sm-4 cols-lg-4 cols-md-4" name="searchKeyword" id="searchKeyword" />
							</div>
							
	</form>
	</div>
	<br>
	<div class="row">
	
      <div class="col-md-2">
      <form>
      <ul class="getdropdown" style="">Category
     <li class="dropdown1" style="list-style:none;" ng-repeat="l in productdata | unique : 'categoryName'" > <input type="checkbox" ng-click="includeCategory(l.categoryName)" />{{l.categoryName}}</li>
      </ul>
      <ul class="getdropdown">Colour
     <li class="dropdown1" style="list-style:none;" ng-repeat="l in productdata | unique : 'colorName'" > <input type="checkbox" ng-click="includeColour(l.colorName)" />{{l.colorName}}</li>
      </ul>
        <ul class="getdropdown">Type
     <li class="dropdown1" style="list-style:none;" ng-repeat="l in productdata | unique : 'subCategoryName'" > <input type="checkbox" ng-click="includeSubCategory(l.subCategoryName)" />{{l.subCategoryName}}</li>
      </ul>
      <button class="btn btn-primary" ng-click="clearFilter()">Clear Filter</button>
      </form>
      </div>
      <div class="col-md-10">
	<div>
	<a href="#" class="btn btn-primary" ng-click="sortType = 'rate'; sortReverse = !sortReverse">
        Price
        <span ng-show="sortType == 'rate' && !sortReverse" class="fa fa-caret-down"><small>(low to high)</small></span>
        <span ng-show="sortType == 'rate' && sortReverse" class="fa fa-caret-up"><small>(high to low)</small></span>
      </a>
      <a href="#" class="btn btn-primary" ng-click="sortType = 'quantity'; sortReverse = !sortReverse">
        Quantity
        <span ng-show="sortType == 'quantity' && !sortReverse" class="fa fa-caret-down"><small>(low to high)</small></span>
        <span ng-show="sortType == 'quantity' && sortReverse" class="fa fa-caret-up"><small>(high to low)</small></span>
      </a>
      <a href="#" class="btn btn-primary" ng-click="sortType = 'discount'; sortReverse = !sortReverse">
        Discount
        <span ng-show="sortType == 'discount' && !sortReverse" class="fa fa-caret-down"><small>(low to high)</small></span>
        <span ng-show="sortType == 'discount' && sortReverse" class="fa fa-caret-up"><small>(high to low)</small></span>
      </a>
       <a href="#" class="btn btn-primary" ng-click="sortType = 'productId'; sortReverse = !sortReverse">
        Arrivals
        <span ng-show="sortType == 'productId' && !sortReverse" class="fa fa-caret-down"><small>Oldest</small></span>
        <span ng-show="sortType == 'productId' && sortReverse" class="fa fa-caret-up"><small>Latest</small></span>
      </a>
      </div>
      
	<div class="row">
<div ng-repeat="l in productdata | filter:searchKeyword | orderBy:sortType:sortReverse | filter:categoryFilter | filter:colourFilter | filter:subCategoryFilter" class="col-sm-3 nopadding" style="min-height:300px; max-height: 300px;">
            <article class="col-item">
            	<div class="photo">
        			<div class="options-cart-round">
        				<button class="btn btn-default" title="Add to cart">
        					<span class="fa fa-shopping-cart"></span>
        				</button>
        			</div>
        			<a href="buynow-{{l.productId}}?userId=1"> <img style="width:150px;height:200px;" src="resources/images/{{l.productId}}.jpg" class="img-responsive" alt="Product Image" /> </a>
        		</div>
        		<div class="info">
        			<div class="row">
        				<div class="price-details col-md-6" style="min-height:65px; max-height: 65px;">
        					<p class="details">
        						{{l.productName}}
        					</p>
        					<h1>{{l.categoryName}} Available ({{l.quantity}})</h1>
        					<span class="price-new">{{l.rate}}</span>
        				</div>
        			</div>
        		</div>
        	</article>
           
        </div>
       
        </div></div></div>
     </div>   

        <script>
var myApp = angular.module('myApp', []);
myApp.filter('unique', function() {
	   // we will return a function which will take in a collection
	   // and a keyname
	   return function(collection, keyname) {
	      // we define our output and keys array;
	      var output = [], 
	          keys = [];

	      // we utilize angular's foreach function
	      // this takes in our original collection and an iterator function
	      angular.forEach(collection, function(l) {
	          // we check to see whether our object exists
	          var key = l[keyname];
	          // if it's not already part of our keys array
	          if(keys.indexOf(key) === -1) {
	              // add it to our keys array
	              keys.push(key); 
	              // push this item to our final output array
	              output.push(l);
	          }
	      });
	      // return our array which should be devoid of
	      // any duplicates
	      return output;
	   };
	});

	myApp.controller('getData', function($scope, $http, $location) {
		$scope.searchKeyword = location.search.substr(8).slice(0, 3);
		$scope.letterLimit = 3;
		  $scope.sortType     = 'productId'; // set the default sort type
		  $scope.sortReverse  = true;  // set the default sort order
		  //$scope.searchFish   = '';     // set the default search/filter term
		$scope.productdata = ${list};
		
		 $scope.categoryIncludes = [];
		    
		    $scope.includeCategory = function(categoryName) {
		        var i = $.inArray(categoryName, $scope.categoryIncludes);
		        if (i > -1) {
		            $scope.categoryIncludes.splice(i, 1);
		        } else {
		            $scope.categoryIncludes.push(categoryName);
		        }
		    }
		    
		    $scope.categoryFilter = function(productdata) {
		        if ($scope.categoryIncludes.length > 0) {
		            if ($.inArray(productdata.categoryName, $scope.categoryIncludes) < 0)
		                return;
		        }
		        
		        return productdata;
		    }
		    
		    
$scope.colourIncludes = [];
		    
		    $scope.includeColour = function(colorName) {
		        var i = $.inArray(colorName, $scope.colourIncludes);
		        if (i > -1) {
		            $scope.colourIncludes.splice(i, 1);
		        } else {
		            $scope.colourIncludes.push(colorName);
		        }
		    }
		    
		    $scope.colourFilter = function(productdata) {
		        if ($scope.colourIncludes.length > 0) {
		            if ($.inArray(productdata.colorName, $scope.colourIncludes) < 0)
		                return;
		        }
		        
		        return productdata;
		    }
		    
$scope.subCategoryIncludes = [];
		    
		    $scope.includeSubCategory = function(subCategoryName) {
		        var i = $.inArray(subCategoryName, $scope.subCategoryIncludes);
		        if (i > -1) {
		            $scope.subCategoryIncludes.splice(i, 1);
		        } else {
		            $scope.subCategoryIncludes.push(subCategoryName);
		        }
		    }
		    
		    $scope.subCategoryFilter = function(productdata) {
		        if ($scope.subCategoryIncludes.length > 0) {
		            if ($.inArray(productdata.subCategoryName, $scope.subCategoryIncludes) < 0)
		                return;
		        }
		        
		        return productdata;
		    }
		    
		    $scope.clearFilter = function() {
		        
		        location.reload();


		      };
	});
</script>
<script>
$('ul.getdropdown').click(function() {
	   $('ul.getdropdown').not(this).find('li.dropdown1').hide();
	   $(this).find('li.dropdown1').show();
	});
</script>
</body>
</html>