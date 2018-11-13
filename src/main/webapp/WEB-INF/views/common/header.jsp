<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$( document ).ready(function() {
		var currentLocation = '${currentLocation}';
		if (currentLocation.indexOf('post') != -1) {
			$('li#post-link').addClass('active');
		} else if (currentLocation.indexOf('about') != -1) {
			$('li#about-link').addClass('active');
		} else if (currentLocation.indexOf('contact') != -1) {
			$('li#contact-link').addClass('active');
		} else {
			$('li#home-link').addClass('active');
		}
	});
</script>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <img
				src="resources/img/w3newbie.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li id="home-link"><a href="${pageContext.request.contextPath}">Home</a></li>
				<li id="about-link"><a href="#">About</a></li>
				<li id="post-link"><a href="${pageContext.request.contextPath}/post">Post</a></li>
				<li id="contact-link"><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>