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
                                <th>Item Name</th>
                                <th>Category type</th>
                                <th>Count</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Sum</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="group in userList">
                                <td class="col-md-4">
                                    <h4><a href="viewproduct--{{group.productId}}--product">{{group.productName}}</a></h4>
                                    <h5>{{group.subCategoryName}}</h5>
                                    
                                </td>
                                <td><h5><strong><a href="productdisplay?search={{group.categoryName}}">{{group.categoryName}}</a></strong></h5></td>
                                <td class="col-md-1" style="text-align: center">
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            
                                        </span>
                                        <input type="text" value="{{group.quantity}}" class="form-control input-number" required>
                                        <span class="input-group-btn">
                                            
                                        </span>
                                    </div>
                                </td>
                                <td class="col-md-1 text-center"><strong>{{group.rate}}</strong></td>
                                <td class="col-md-1 text-center"><strong>{{group.amount}}</strong></td>
                                <td class="col-sm-2 col-md-2">
                                	<a type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                        <i class="glyphicon glyphicon-shopping-cart"></i>
                                    </a>
                                    <a type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Remove">
                                        <i class="glyphicon glyphicon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                             </tbody>
                            <tfoot>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right"><h5>Total</h5></td>
                                <td class="text-center"><h5><strong>$24.59</strong></h5></td>
                                <td></td>
                            </tr>
                            </tfoot>
                       
                    </table>
                    
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
<script>
/*Tooltip*/
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>