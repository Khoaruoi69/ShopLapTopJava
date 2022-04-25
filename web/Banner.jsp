<%-- 
    Document   : Banner
    Created on : Apr 22, 2022, 9:49:02 AM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 4 Carousel with Controls</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
<style>

</style>
</head>
<body>	
    <div class="container" >
        <div id="carousel-demo" class="carousel slide" data-ride="carousel">
	<!-- Carousel Items -->
	     <div class="carousel-inner" >
		<div style="padding-top: 5px" class="carousel-item active" data-interval="1000">
                    <img src="https://cdn.cellphones.com.vn/media/resized//ltsoft/promotioncategory/dell_cate.png" alt="" style="width:100%"> 
                       
		</div>
		<div style="padding-top: 5px" class="carousel-item" data-interval="1000">
			<img src="https://cdn.cellphones.com.vn/media/resized//ltsoft/promotioncategory/FUJITSU-CATE.png" alt="" style="width:100%">
		</div>					
		<div style="padding-top: 5px" class="carousel-item">
			<img src="https://cdn.cellphones.com.vn/media/resized//ltsoft/promotioncategory/2-intel-gaming-595-100-max.png" class="" alt="" style="width:100%">
		</div>
	</div>
	<!-- Carousel Left and Right Controls -->
	<a href="#carousel-demo" class="carousel-control-prev" data-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</a>
	<a href="#carousel-demo" class="carousel-control-next" data-slide="next">
		<span class="carousel-control-next-icon"></span>
	</a>
</div>
</div>
</body>
</html>       