<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$( document ).ready(function() {
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
			<div class="logo"><a href="home">main{}</a></div>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<c:forEach items="${categories}" var="category">
					<li id="${category.path}-link" class='<c:if test="${category.selected}">active</c:if>'>
						<a href="${pageContext.request.contextPath}/${category.path}">${category.name}</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</nav>