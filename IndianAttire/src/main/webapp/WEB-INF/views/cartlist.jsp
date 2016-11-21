<%@include file="header.jsp"%>
<%@page isELIgnored="false"%>
<div class="container">
	<div class="row">
		<div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Items</div>
                <div ng-app="TestApp" ng-controller="testController" class="panel-body table-responsive">
                    <table class="table-responsive table table-striped" datatable="ng" dt-options="vm.dtOptions">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Order type</th>
                                <th>Count</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Sum</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="group in userList">
                                <td>
                                    <h4><a href="#">{{group.productName}}</a></h4>
                                    <h5>Item Name</h5>
                                    <span>Note: </span><span><strong>Product Description</strong></span>
                                </td>
                                <td><h5><strong>Product Description</strong></h5></td>
                                <td class="col-md-1" style="text-align: center">
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            
                                        </span>
                                        <input type="text" class="form-control input-number" required>
                                        <span class="input-group-btn">
                                            
                                        </span>
                                    </div>
                                </td>
                                <td class="col-md-1 text-center"><strong>$4.87</strong></td>
                                <td class="col-md-1 text-center"><strong>$14.61</strong></td>
                                <td class="col-sm-1 col-md-1">
                                    <button type="button" class="btn btn-danger">
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right"><h5>Total</h5></td>
                                <td class="text-center"><h5><strong>$24.59</strong></h5></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-8">
                            <button type="button" class="btn btn-default">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                            </button>
                            <a href="/checkout" class="btn btn-success">
                                Checkout <span class="glyphicon glyphicon-play"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
	
<script src="resources/bootstrap-3.3.7-dist/js/angular-datatables.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/jquery.dataTables.min.js"></script>
<script>
angular.module('TestApp', ['TestApp.controllers','datatables']);
	
	angular.module('TestApp.controllers', []).controller('testController', function($scope,DTOptionsBuilder, DTColumnBuilder) {
		$scope.userList = ${wishlist}
		  
		$scope.vm = {};

		$scope.vm.dtOptions = DTOptionsBuilder.newOptions()
		  .withOption('order', [0, 'asc']);
		 });

</script>
