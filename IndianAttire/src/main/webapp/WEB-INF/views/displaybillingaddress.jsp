<%@include file="header.jsp"%>
<br>
<div class="container">
	<div class="col-md-4 col-xs-5 col-lg-5 col-sm-5"
		style="margin-left: 250px; background: #DED4D1; text-align: center; border: 1px solid grey;">
		<h3>Your billing Address</h3>
		<hr class="colorgraph">
		<div class="row">
		<form:form commandName="billingAddress"
			modelAttribute="billingAddress" method="post">
			<input type="hidden" name="_flowExecutionKey"
				value="${flowExecutionKey}" />
			
				
					<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					FlatNo: ${billingAddress.flatNo}
					</div>
					<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					Street: ${billingAddress.street}
					</div></div>
					<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					Address: ${billingAddress.addressLine1}
					</div>
					<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					 ${billingAddress.addressLine2}
					</div></div>
					<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					City: ${billingAddress.city}
					</div>
					<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					State: ${billingAddress.state}
					</div>
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					Country: ${billingAddress.country}
					</div>
					<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
					Pincode: ${billingAddress.pincode}
					</div>
				</div>
			<input type="submit" name="_eventId_submit"
							class="btn btn-md btn-primary" value="Confirm Address">
						<input type="submit" name="_eventId_edit"
							class="btn btn-md btn-success" value="Edit Address">
							<input type="submit" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="Cancel Order">
		</form:form>
	</div></div>
</div>