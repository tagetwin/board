<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Yndg Blog Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/detail.css" />

</head>

<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!--   Server / web.xml 에 Welcome File List가 index.jsp 로 정의되어있음 -->
		<a class="navbar-brand" href="/blog/">Yndg</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">

				<c:choose>
					<c:when test="${not empty sessionScope.user}">
						<li class="nav-item"><a class="nav-link" href="/blog/board?cmd=write">Post</a></li>

						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=profile">Profile</a></li>

						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=logout">Logout</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=join">Join</a></li>
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=login">Login</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item ml-auto"><a class="nav-link disabled" >${sessionScope.user.username}</a></li>
			</ul>
		</div>
	</nav>
	<br>