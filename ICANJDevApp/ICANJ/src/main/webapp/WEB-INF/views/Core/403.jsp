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
				<jsp:include page="/WEB-INF/views/sidebar.jsp">
					<jsp:param name="name" value="sos" />
				</jsp:include>


				<div class="span9">
					<c:if test="${not empty alert}">
						<div class="alert ${alert.cssAlertClass}" id="errorBox">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Warning! :</strong>
							${alert.message}
						</div>
					</c:if>
					<div class="page-header">
						<h1>Error 403: Access Denied/Forbidden </h1>
					</div>
					<p>You do not have access to this page. Please email icanjadmin@icanj.org to request access to this page.</p>
				</div>
			</div>
		</div>
	</body>
</html>