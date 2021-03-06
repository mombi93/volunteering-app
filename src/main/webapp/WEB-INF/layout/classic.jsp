<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
   	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
   	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title><tiles:getAsString name="title" /></title>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
			
	</head>
	<body>
		
		<div style="width:100%;height:100px;background-color:#ccc;margin-top:0px;position:fixed">
			<div style="width:30%;height:70px;margin-left:20%;margin-top:30px">
				<h1><a href="/">volunteer.me</a></h1>
			</div>

			<security:authorize access="! isAuthenticated()">
				<a style="float:right;margin-top:-70px;margin-right:20%;" href="/login.html" class="btn btn-primary btn-lg" role="button">Sign in / Register</a>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<a style="float:right;margin-top:-70px;margin-right:28%;" href="/profile.html" class="btn btn-primary btn-lg" role="button">My Profile</a>
				<a style="float:right;margin-top:-70px;margin-right:20%;" href="/logout" class="btn btn-primary btn-lg" role="button">Logout</a>
			</security:authorize>
						
			
		</div>
		
		<tiles:insertAttribute name="body" />


		<tiles:insertAttribute name="footer" /> 

	</body>
</html>