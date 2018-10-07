<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="en">
<head>
<title>${pageTitle}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href='<c:url value="resources/css/default.css" />' />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- End of header -->
	<div class="container-fluid">
		<div class="row">		
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol> <!-- End of Indicator -->
				
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src='<c:url value="resources/img/mountains.png" />' class="img-responsive">
						<div class="carousel-caption">
							<h1>the hole new world</h1>
							<br/>
							<button class="btn btn-default">Try it out</button>
						</div>
					</div> <!-- 1st image -->
					<div class="item">
						<img src='<c:url value="resources/img/snow.png" />' class="img-responsive">
					</div> <!-- 2nd image -->
					<div class="item">
						<img src='<c:url value="resources/img/red.png" />' class="img-responsive">
					</div> <!-- 3rd image -->
				</div> <!-- End of Images list -->
				
				<a class="carousel-control left" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" arial-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control right" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" arial-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div> <!-- End of Slider -->
		</div>
	</div>
	
	<div class="container text-center">
		<h2>What we are using</h2>
		<div class="row">
			<div class="col-sm-4">
				<img src='<c:url value="resources/img/html5.png" />' id="icon">
			</div>
			<div class="col-sm-4">
				<img src='<c:url value="resources/img/bootstrap.png" />' id="icon">
			</div>
			<div class="col-sm-4">
				<img src='<c:url value="resources/img/css3.png" />' id="icon">
			</div>
		</div>
	</div> <!-- End of What we are using section -->
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h4>What's new?</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
			<div class="col-md-6">
				<img src='<c:url value="resources/img/bootstrap2.jpg" />' class="img-responsive">
			</div>
		</div>
	</div> <!-- End of 2 columns section -->
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<!-- End of Footer -->
</body>
</html>