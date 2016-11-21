<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset='utf-8'/>
	<title>jQuery elevateZoom Demo</title>
	<script src='resources/js/jquery-1.8.3.min.js'></script>
	<script src='resources/js/jquery.elevatezoom.js'></script>
	<script src="resources/js/jquery.elevateZoom-3.0.8.min.js"></script>
</head>
<body>
<h1>Basic Zoom Example</h1>
<img id="zoom_01" src='resources/images/PRD001.jpg' width="90" height="90" data-zoom-image="resources/images/PRD001.jpg"/>

<br />
see more examples online <a href="http://www.elevateweb.co.uk/image-zoom/examples">http://www.elevateweb.co.uk/image-zoom/examples</a>
<script>
    $('#zoom_01').elevateZoom({
    	
    	cursor: "crosshair",
    	zoomWindowFadeIn: 500,
		zoomWindowFadeOut: 500,
		lensFadeIn: 500,
		lensFadeOut: 500,tint:true, tintColour:'#F90', tintOpacity:0.5 }); 
</script>
</body>
</html>