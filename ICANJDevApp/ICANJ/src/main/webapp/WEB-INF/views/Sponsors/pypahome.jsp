<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sign in &middot; ICANJ</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="/resources/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="/resources/css/bootstrap-responsive.css"
	rel="stylesheet" media="screen">
<link href="/resources/css/docs.css" rel="stylesheet"
	media="screen">
<link href="/resources/css/icanj.css" rel="stylesheet"
	media="screen">
<link href="/resources/css/login.css" rel="stylesheet"
	media="screen">
</head>
<body>

	<div class="container">
	<table class="table table-hover">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email Address</th>
							</tr>
						<c:forEach items="${items}" var="pitems">
						<c:forEach items="${pitems}" var="item">
						<tr>
							<td>${item[0].fullName}</td>
							<td>${item[1].fullName}</td>
							<td>${items.email}</td>
							
						</tr>
						</c:forEach>
						</c:forEach>
					</table>	
		
	</div>
	<!-- /container -->
	<script type="text/javascript" src="/resources/js/jquery.js"></script>
	<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="/resources/js/icanj.js"></script>
</body>

</html>
