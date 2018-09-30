<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$( document ).ready(function() {
		var currentPage = '${requestScope['javax.servlet.forward.request_uri']}';
		console.log(currentPage);
		if (currentPage.indexOf('product') != -1) {
			console.log("product");
			$('li#product-link').addClass('active');
		} else {
			console.log("home");
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
				src='<c:url value="resources/img/w3newbie.png" />' />
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li id="home-link"><a href="${pageContext.request.contextPath}">Home</a></li>
				<li id="about-link"><a href="#">About</a></li>
				<li id="product-link"><a href="${pageContext.request.contextPath}/product">Product</a></li>
				<li id="contact-link"><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>