<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/WEB-INF/views/Core/header.jsp">
	<jsp:param name="name" value="sos" />
</jsp:include>

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/WEB-INF/views/Core/sidebar.jsp">
				<jsp:param name="name" value="sos" />
			</jsp:include>


			<div class="span9">
			<div class="page-header">
			<div class="alert alert-success">${message}</div>
			<h1>Error 500: Content Unavailable </h1>
			</div>
			<p>The Content you have requested is currently unavailable. The ICANJ IT team will check the issue.</p>
			</div>
		</div>
	</div>

    <jsp:include page="/WEB-INF/views/Core/footer.jsp">
        <jsp:param name="name" value="sos" />
    </jsp:include>
</body>
</html>