<!DOCTYPE html>
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
		<c:if test="${not empty alert}">
			<div class="alert ${alert.cssAlertClass}" id="errorBox">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>Warning! :</strong>
				${alert.message}
			</div>
		</c:if>
		<form class="form-signin" action="j_spring_security_check"
			method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="text" class="input-block-level" name="j_username"
				placeholder="Email address"> <input type="password"
				class="input-block-level" name="j_password" placeholder="Password">
			<label class="checkbox"> <input type="checkbox"
				value="remember-me"> Remember me
			</label>
			<button class="btn btn-large btn-primary" type="submit">Sign
				in</button>
			<span class="help-block">
				<a href="#">Forgot	password ?</a> |
				<a href="/Public/Register/">Register</a>
			</span>
		</form>

	</div>
	<!-- /container -->
	<script type="text/javascript" src="/resources/js/jquery.js"></script>
	<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="/resources/js/icanj.js"></script>
</body>

</html>
