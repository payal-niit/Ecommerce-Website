<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page isELIgnored="false"%>
<html>
<head>
<script src="resources/bootstrap-3.3.7-dist/js/jquery-3.1.0.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/angular.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/angular-datatables.min.js"></script>
<script src="resources/bootstrap-3.3.7-dist/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/datatables.bootstrap.css">
<style type="text/css">
#login-box {
	width: 550px;
	padding: 20px;
	margin: 100px auto;
	
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 0px solid #000;
}
</style>
</head>
<body>

<div id="login-box">
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                    <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form:form role="form" commandName="userDetail" method="POST">
                    <div class="form-group">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    EXPIRY DATE</label><br>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                    
               
            
            <br/>
            <input type="submit" name="_eventId_submit" class="btn btn-success btn-lg btn-block" role="button">
            </form:form>
        </div>
    </div>
</div>
</div></div>
</div>

</body>
</html>