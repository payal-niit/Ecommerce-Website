<%@include file="header.jsp" %>
<div class="container">
	<div class="col-md-5 col-xs-5 col-lg-5 col-sm-5" style="margin-left: 250px; background:#DED4D1; text-align:center;border: 1px solid grey;">
<h3>Add Billing Address</h3>
			<hr class="colorgraph">
			<form:form  commandName="billingAddress" modelAttribute="billingAddress" method="post">
<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="flatNo" class="form-control input-sm" placeholder="Flat NO"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="street" class="form-control input-sm" placeholder="Street"/>
				</div>
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="flatNo"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-4 col-sm-6">
				<form:errors class="error" path="street"></form:errors>
				</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="addressLine1" class="form-control input-sm" placeholder="Address line 1"/>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
					<form:input path="addressLine2" class="form-control input-sm" placeholder="Address line 2"/>
				</div>
				
				<div class="row">
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="addressLine1"></form:errors>
				</div>
				<div class="col-md-6 col-xs-6 col-lg-6 col-sm-6">
				<form:errors class="error" path="addressLine2"></form:errors>
				</div>
				
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="city" class="form-control input-sm" placeholder="City"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="state" class="form-control input-sm" placeholder="State"/>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
					<form:input path="country" class="form-control input-sm" placeholder="Country"/>
				</div>
				<div class="row">
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="city"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="state"></form:errors>
				</div>
				<div class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:errors class="error" path="country"></form:errors>
				</div>
				</div>
			</div>
				<div class="row">
				<div style="margin-left: 85px" class="col-md-4 col-xs-4 col-lg-4 col-sm-4">
				<form:input path="pincode" placeholder="Pincode"/>
				</div>
				</div>
				<input type="submit" name="_eventId_submit"
							class="btn btn-md btn-primary" value="Update Billing Address">
						
							<input type="submit" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="Cancel">
				</form:form>
				</div></div>