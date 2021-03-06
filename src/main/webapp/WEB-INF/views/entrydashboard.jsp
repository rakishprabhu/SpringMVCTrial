<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp"%>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div>
				<div class="btn btn-block btn-primary btn-default1">
		 		<a href="<c:url value='/meldetails' />">MEL Test Automation</a>
		 	</div>
				<a href="<c:url value='//meldetails' />" class="btn btn-block btn-success btn-default1">Starr-SGL Test Automation</a>
			</div>
			
		</div>
		<sec:authorize access="hasRole('ADMIN')">
			<div class="well">
				<a href="<c:url value='/datatable' />">Add New User</a>
			</div>
		</sec:authorize>
	</div>
</body>
</html>