<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Sign in &middot; ICANJ</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<style type="text/css">
			body {
				padding-top: 40px;
				padding-bottom: 40px;
				background-color: #f5f5f5;
			}

			.form-signin {
				max-width: 300px;
				padding: 19px 29px 29px;
				margin: 0 auto 20px;
				background-color: #fff;
				border: 1px solid #e5e5e5;
				-webkit-border-radius: 5px;
				-moz-border-radius: 5px;
				border-radius: 5px;
				-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
				-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
				box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
			}

			.form-signin .form-signin-heading,.form-signin .checkbox {
				margin-bottom: 10px;
			}

			.form-signin input[type="text"],.form-signin input[type="password"] {
				font-size: 16px;
				height: auto;
				margin-bottom: 15px;
				padding: 7px 9px;
			}
		</style>

		<link href="/resources/css/bootstrap.css" rel="stylesheet"
					media="screen">
		<link href="/resources/css/bootstrap-responsive.css"
					rel="stylesheet" media="screen">
		<link href="/resources/css/docs.css" rel="stylesheet"
					media="screen">
		<link href="/resources/css/icanj.css" rel="stylesheet"
					media="screen">

	</head>
	<body>
		<div class="container-fluid">
			<div class="row-fluid">

				<div class="span9">
					<c:if test="${not empty alert}">
						<div class="alert ${alert.cssAlertClass}" id="errorBox">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>Warning! :</strong>
							${alert.message}
						</div>
					</c:if>
					<div class="page-header">
						<h1>Error 404: That's an error. </h1>
					</div>
					<p>The requested URL /404 was not found on this server. That's all we know.</p>
					<a href="/" type="button" class="btn btn-info" >Click to go back to HomePage.</a>
				</div>
			</div>
			<!-- /container -->
			<script type="text/javascript" src="/resources/js/jquery.js"></script>
			<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
			<script type="text/javascript" src="/resources/js/icanj.js"></script>
		</div>
	</body>
</html>